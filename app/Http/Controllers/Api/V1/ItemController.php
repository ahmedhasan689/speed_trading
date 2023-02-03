<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;

use App\Http\Requests\EquipmentUserRequest;
use App\Http\Requests\ItemRateRequest;
use App\Http\Resources\BankResource;
use App\Http\Resources\ItemOneResource;
use App\Http\Resources\ItemRateResource;
use App\Http\Resources\ItemResource;
use App\Http\Resources\MainCategoryResource;
use App\Http\Resources\OfferResource;
use App\Http\Resources\SelectResource;
use App\Http\Resources\SubCategoryResource;
use App\Models\Bank;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Favourite;
use App\Models\Item;
use App\Models\ItemRate;
use App\Models\Offer;
use App\Models\Rate;
use App\Traits\ApiResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ItemController extends Controller
{

    use ApiResponse;

    public function index(Request $request){
        $list =  Item::where(function ($q) use($request){

           if ($request->has('text') && $request->text != null && $request->text != ''){
               if (app()->getLocale() == 'ar'){
                   $q->where('name->ar','like','%'.$request->text.'%');
               }else{
                     $q->where('name->en','like','%'.$request->text.'%');
               }
           }

           if($request->has('price_from') && $request->price_from != null && $request->price_from != ''){
               $q->where('price','>=', $request->price_from);
           }

           if($request->has('price_to')&& $request->price_to != null && $request->price_to != ''){
               $q->where('price','<=', $request->price_to);
           }
           if ($request->has('main_category_id') && $request->main_category_id != null && $request->main_category_id != ''){
               $q->whereHas('category',function ($q2) use($request){
                   $q2->where('upper_id',$request->main_category_id);
               });
           }

            if($request->has('sub_category_id') && $request->sub_category_id != null && $request->sub_category_id != ''){

                $q->where('category_id' , $request->sub_category_id);
            }

            if($request->has('brand_id') && $request->brand_id != null && $request->brand_id != ''){

                $q->where('brand_id' , $request->brand_id);
            }


        });
            if ($request->has('order_by')){
//                if ($request->order_by == 'sales'){
//                    $list = $list->orderBy('detail_count', 'desc');
//                }

                if ($request->order_by == 'new'){
                    $list = $list->orderBy('id', 'desc');
                }
            }
            $list = $list->paginate(10);
        return $this->okApiResponse(ItemResource::collection($list),__("Items list"));

    }


    public function show($id){

        $item = Item::findOrFail($id);

        return $this->okApiResponse(new ItemOneResource($item),__("Show item"));

    }
    public function rate($id){

        $rates = Rate::where('item_id',$id)->orderByDesc('created_at')->paginate(10);

        return $this->okApiResponse(ItemRateResource::collection($rates)->response()->getData(true),__("Show item rates"));

    }


    function saveImage($file, $folder = '/')
    {
        request()->files->remove('link');

        $fileName = time() . rand(10,99).$file->getClientOriginalName();
        $dest = public_path('/uploads/' . $folder);
        $file->move($dest, $fileName);

        $uploaded_file = 'uploads/' . $folder . '/' . $fileName;
        return $uploaded_file;
    }




    public function favourite($id) {
        $item = Item::findOrFail($id);
        if ($item->favourite()->where('user_id',Auth::id())->count() == 0){
            $item->favourite()->create(['user_id'=>Auth::id()]);
        }else{
            $item->favourite()->where('user_id',Auth::id())->delete();
        }
        return $this->okApiResponse(['is_favourite'=>$item->is_favourite],__("Item change favourite status successfully"));
    }
    public function myFavourites(Request $request){


            $array = Favourite::where('user_id',Auth::id())->where('favourable_type','App\Models\Item')->pluck('favourable_id')->toArray();
            $items = Item::whereIn('id',$array)->paginate(10);



            return $this->okApiResponse(ItemResource::collection($items),__("Favourites"));


    }

    public function rateItem(ItemRateRequest $request){

        $item = Item::findOrFail($request->item_id);

        Rate::create([
            'item_id'=>$item->id,
            'user_id'=>Auth::id(),
            'rate'=>$request->rate,
            'comment'=>$request->comment
        ]);
        return $this->okApiResponse([],__("Item rated successfully"));


    }

    public function rateItems(Request $request){
//return $request->all();

foreach ($request->item as $key=>$value){
    $item = Item::findOrFail($key);

    Rate::create([
        'order_id'=>$request->order_id,
        'item_id'=>$item->id,
        'user_id'=>Auth::id(),
        'rate'=>$value['rate'],
        'comment'=>$value['comment'] ?? ''
    ]);
}

        return $this->okApiResponse([],__("Order rated successfully"));


    }
}
