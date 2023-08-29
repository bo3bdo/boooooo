<!DOCTYPE html >
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" x-cloak
      x-data="{darkMode: localStorage.getItem('dark') === 'true'}"
      x-init="$watch('darkMode', val => localStorage.setItem('dark', val))"
      x-bind:class="{'dark': darkMode}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'bo3bdo') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet"/>

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- Styles -->
    @livewireStyles

    <style>
        [x-cloak] {
            display: none;
        }

        li > a {
            color: #eab305 !important;
        }

        p > strong {
            color: #eab305 !important;
        }

        strong {
            color: #eab305 !important;
        }

    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,500;0,700;1,700&family=Roboto:ital,wght@0,300;0,500;0,900;1,700;1,900&display=swap"
            rel="stylesheet">
    <style>
        html, body {
            font-family: "Roboto", "sans-serif" !important;
        }

        blockquote > p {
            color: #eab305 !important;
        }

        p > strong {
            color: #eab305 !important;
        }

        h1, h2, h3, h4, h5, h6 {
            color: #eab305 !important;
        }
    </style>
</head>
<body
        class="font-poppins dark:bg-[#171717] bg-gray-100 dark:text-white text-gray-900">
<x-banner/>

<div class="min-h-screen">
    <div class="max-w-9xl mx-auto px-4 sm:px-6 xl:max-w-7xl xl:px-0">

        <x-nav/>
        @if($site->is_active AND Route::is('dashboard'))
            <x-myinfo/>
        @endif
        <!-- Page Content -->
        <div class="divide-y divide-gray-200 dark:divide-gray-700">
            <div class="w-full py-12">
                {{ $slot }}
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="mt-16 flex flex-col items-center">
        <div class="mb-3 flex space-x-4"></div>
        <div class="mb-2 flex space-x-2 text-sm text-gray-500 dark:text-gray-400">
            <div>Hamad</div>
            <div> •</div>
            <div>© 2023</div>
            <div> •</div>
            <a href="/">bo3bdo</a></div>
        <div class="mb-8 text-sm text-gray-500 dark:text-gray-400"></div>
    </div>
</footer>

<div x-data="{scrollBackTop: false}" x-cloak>
    <button
            x-show="scrollBackTop"
            x-on:scroll.window="scrollBackTop = (window.pageYOffset > window.outerHeight * 0.5) ? true : false"
            x-on:click="window.scrollTo({top: 0, behavior: 'smooth'})"
            aria-label="Back to top"
            class="rounded-xl fixed animate__animated animate__slideInRight  bottom-0 right-0 p-2 mx-10 my-10 text-white bg-gray-800 hover:bg-gray-700 focus:outline-none">
        <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd"
                  d="M3.293 9.707a1 1 0 010-1.414l6-6a1 1 0 011.414 0l6 6a1 1 0 01-1.414 1.414L11 5.414V17a1 1 0 11-2 0V5.414L4.707 9.707a1 1 0 01-1.414 0z"
                  clip-rule="evenodd"></path>
        </svg>
    </button>
    <div
            x-data
            x-init="window.scrollTo({top: 0, behavior: 'smooth'})"
            class=""></div>
</div>
@stack('modals')

@livewireScripts
</body>
</html>
