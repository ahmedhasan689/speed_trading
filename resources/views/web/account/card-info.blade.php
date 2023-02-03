<div class="mb-2">
    <img src="{{ asset('web/img/user.png') }}" class="img-one" style="z-index: 8;">
    <span>
        {{ $user->name }}
    </span>
</div>

<div class="mb-2">
    <img src="{{ asset('web/img/phone2.png') }}" class="img-one" style="z-index: 8;">
    <span>
        {{ $user->mobile }}
    </span>
</div>

<div>
    <img src="{{ asset('web/img/email.png') }}" class="img-one" style="z-index: 8;">
    <span>
        {{ $user->email }}
    </span>
</div>
