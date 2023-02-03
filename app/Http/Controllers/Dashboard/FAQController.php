<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;

use App\Http\Requests\FAQRequest;
use App\Models\FAQ;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FAQController extends Controller
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

        $faqs = FAQ::paginate(5);

        return view('dashboard.faqs.index', compact('faqs'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $faq = FAQ::findOrFail($id);

        return view('dashboard.faqs.show',compact('faq'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        $faq=new FAQ();
        return view('dashboard.faqs.create',compact('faq'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(FAQRequest $request)
    {

        //return $request->all();
        $faq = FAQ::create($request->all());

        toast(__('Added successfully'),'success');
        return redirect(route('dashboard.faqs.index'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {

        $faq = FAQ::findOrFail($id);

        return view('dashboard.faqs.edit',compact('faq'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, FAQRequest $request)
    {
        $faq = FAQ::findOrFail($id);
        $faq->update($request->all());
        toast(__('Edited successfully'),'success');
        return redirect(route('dashboard.faqs.index'));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {

        $faq= FAQ::findOrFail($id);
        $faq->delete();
        toast(__('Deleted successfully'),'success');
        return redirect()->back();
    }
}
