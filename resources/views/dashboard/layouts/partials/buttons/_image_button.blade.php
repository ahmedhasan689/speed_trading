<a href="{{isset($route) ? $route : 'javascript:void(0);'}}" data-toggle="tooltip" data-placement="top" title="{{$tooltip}}"
    class="btn btn-md btn-info">
    <i class="fa fa-image"></i> @if(isset($buttonText)) {{$buttonText }} @endif
</a>
