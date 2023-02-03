<h4>
    {{ Auth::user() }}
    @auth
        <span>Log IN</span>
    @endauth

    @guest
        <span>No</span>
    @endguest
</h4>

<form action="{{ route('logout') }}" method="POST">
    @csrf

    <button type="submit" class="btn btn-danger">
        Logout
    </button>
</form>
