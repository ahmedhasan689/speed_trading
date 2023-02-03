<table class="table table-striped {{--dataex-html5-selectors--}}">
    <thead>
    <tr>
        <th scope="col">{{__('#') }}</th>
        <th scope="col">{{__('Question')}}</th>
        <th scope="col ">{{__('Options')}}</th>
    </thead>
    <tbody>
    @foreach($faqs as $faq)
        @include('dashboard.faqs.partials._table_raw')
    @endforeach
    </tbody>

</table>
{{ $faqs->links() }}

