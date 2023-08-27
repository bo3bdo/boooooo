<header class="flex items-center justify-between mt-10">
    <div><a aria-label="bo3bdo" href="/">
            <div class="flex items-center justify-between">
                <div class="mr-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="none"
                         viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                         class="logo_svg__w-6 logo_svg__h-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="m3.75 13.5 10.5-11.25L12 10.5h8.25L9.75 21.75 12 13.5H3.75z"></path>
                    </svg>
                </div>
                <div class="hidden h-6 text-2xl font-semibold sm:block">bo3bdo</div>
            </div>
        </a></div>
    <div class="flex items-center text-base leading-5">
        <div class="hidden sm:block space-x-1">
            <a class=" text-gray-900 dark:text-gray-100"
               href="{{route('tags')}}">Tags</a>
            <a class=" text-gray-900 dark:text-gray-100"
               href="#">Snippets</a>

        </div>

        <button x-cloak x-on:click="darkMode = !darkMode;">
            <x-heroicon-s-moon x-show="!darkMode"
                               class="p-2 ml-3 w-8 h-8 text-gray-700 bg-gray-100 rounded-md transition cursor-pointer hover:bg-gray-200"/>
            <x-heroicon-s-sun x-show="darkMode"
                              class="p-2 ml-3 w-8 h-8 text-gray-100 bg-gray-700 rounded-md transition cursor-pointer dark:hover:bg-gray-600"/>
        </button>
        <div class="sm:hidden">
            <button type="button" class="ml-1 mr-1 h-8 w-8 rounded py-1" aria-label="Toggle Menu">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                     class="text-gray-900 dark:text-gray-100">
                    <path fill-rule="evenodd"
                          d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                          clip-rule="evenodd"></path>
                </svg>
            </button>
            <div
                    class="fixed top-0 left-0 z-10 h-full w-full transform bg-gray-200 opacity-95 duration-300 ease-in-out dark:bg-gray-800 translate-x-full">
                <div class="flex justify-end">
                    <button type="button" class="mr-5 mt-11 h-8 w-8 rounded" aria-label="Toggle Menu">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                             class="text-gray-900 dark:text-gray-100">
                            <path fill-rule="evenodd"
                                  d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                  clip-rule="evenodd"></path>
                        </svg>
                    </button>
                </div>
                <nav class="fixed mt-8 h-full">
                    @forelse($tags as $tag)
                        <div class="px-12 py-4">
                            <a class="text-2xl font-bold tracking-widest text-gray-900 dark:text-gray-100"
                               wire:navigate.hover href="/tags/{{ $tag->slug }}">{{ $tag->name }}</a>
                        </div>
                    @empty

                    @endforelse
                </nav>
            </div>
        </div>
    </div>
</header>
