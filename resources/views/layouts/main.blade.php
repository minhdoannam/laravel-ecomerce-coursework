<!DOCTYPE html>
<html lang="en">
<head>
	@include('includes.head')
    <title>
        @yield('title')
    </title>
	<style>
		@yield('style')
	</style>
</head>
<body>
    @yield('header')
    <div class="container">
        <div id="navigation">  
            @include('includes.nav')
        </div>  
        @yield('content')
        
    </div>
    @include ('includes.footer')
</body>
</html>
