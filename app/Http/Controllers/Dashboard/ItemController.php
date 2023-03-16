<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\ItemRequest;
use App\Models\Category;
use App\Models\Favourite;
use App\Models\Item;
use App\Models\ItemImage;
use App\Models\ItemSolution;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ItemController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        $items = Item::paginate(5);

        return view('dashboard.items.index', compact('items'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $item = Item::findOrFail($id);

        return view('dashboard.items.show',compact('item'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $item=new Item();

        return view('dashboard.items.create',compact('item'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(ItemRequest $request)
    {

        $requests = $request->except('image');
        if ($request->hasFile('user_manual') && $request->user_manual != null) {
            $requests['user_manual'] = saveImage($request->user_manual, 'user_manual');
            $request->files->remove('user_manual');
        }

        $item = Item::create($requests);
        if ($request->hasFile('image') && $request->image != null) {
            $image = saveImage($request->image, 'image');
            $request->files->remove('image');

            ItemImage::create([
                'item_id'=>$item->id,
                'url'=>$image
            ]);
        }


        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.items.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $item = Item::findOrFail($id);
        $mainCategoryID = $item->category->upper->id ?? null;
        return view('dashboard.items.edit',compact('item','mainCategoryID'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, ItemRequest $request)
    {

        $item = Item::findOrFail($id);
        $requests = $request->all();
        if ($request->hasFile('user_manual') && $request->user_manual != null) {
            $requests['user_manual'] = saveImage($request->user_manual, 'user_manual');
            $request->files->remove('user_manual');
        }

        $item->fill($requests)->save();
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.items.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $item= Item::findOrFail($id);

        $item->images()->delete();
        $item->rates()->delete();
        $solutions = ItemSolution::where('item_id', $item->id())->get();

        foreach ($solutions as $s_item) {
            $s_item->delete();
        }

        $favorites = Favourite::where('item_id', $item->id)->get();

        foreach ($favorites as $f_item) {
            $f_item->delete();
        }

        $item->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function getCategory(Request $request)
    {
        $categories = Category::where('upper_id', $request->id)->get();

        return response()->json([
            'categories' => $categories,
        ]);
    }
}
