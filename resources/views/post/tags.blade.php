<x-app-layout>
    <div class="m-auto mx-auto my-2 p-6 w-3/4">
        <div class="text-3xl"> All Tags</div>
        <div class="flex flex-wrap mt-10">
            @foreach($tags as $tag)
                <a class="mr-3 text-sm font-medium uppercase text-yellow-700 dark:text-yellow-400 hover:text-yellow-600 dark:hover:text-yellow-400"
                   href="/tags/{{ $tag->slug }}">{{ $tag->name }}</a>
            @endforeach
        </div>
    </div>
</x-app-layout>
