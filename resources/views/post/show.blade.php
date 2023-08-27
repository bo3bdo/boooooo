<x-app-layout>
    {{-- titile --}}
    <div class="p-6 border-b border-gray-300 dark:border-gray-700">
        <div
                class="font-medium text-center p-1 text-gray-500 dark:text-gray-400">{{ $post->created_at->format('l, M d,Y') }}</div>
        <div><h1
                    class="text-3xl text-center font-extrabold leading-9 tracking-tight text-gray-900 dark:text-gray-100 sm:text-4xl sm:leading-10 md:text-5xl md:leading-14">{{ $post->title }}</h1>
        </div>
    </div>

    {{--    body--}}

    <div class="flex space-x-8 mt-10">
        {{--        sleed--}}
        <div class="flex-none w-1/4  space-y-8">
            {{--            me info --}}
            <dl class="pt-6 pb-10 border-b border-gray-300 dark:border-gray-700">
                <dt class="sr-only">Authors</dt>
                <dd>
                    <ul class="flex">
                        <li class="flex items-center space-x-2">
                            <img
                                    alt="avatar"
                                    src="{{ url($site->image) }}"
                                    class="rounded-full w-10 h-10">
                            <dl class="whitespace-nowrap text-sm font-medium leading-5">
                                <dt class="sr-only">Name</dt>
                                <dd class="text-gray-900 dark:text-gray-100">Hamad</dd>
                                <dt class="sr-only">Twitter</dt>
                                <dd>
                                    <a target="_blank" rel="noopener noreferrer" href="{{ $site->twitter_link }}"
                                       class="text-primary hover:text-red-600 dark:hover:text-red-600">@Hamad3bdulla</a>
                                </dd>
                            </dl>
                        </li>
                    </ul>
                </dd>
            </dl>
            {{--            me info --}}
            {{--            tags --}}

            <div class="pt-6 pb-10 border-b border-gray-300 dark:border-gray-700">
                <h2 class="text-xs uppercase tracking-wide text-gray-500 dark:text-gray-400">Tags</h2>
                <div class="flex flex-wrap">
                    @forelse($post->tags as $tag)
                        <a
                                class="mr-3 text-sm font-medium uppercase text-primary hover:text-red-600 dark:hover:text-red-600"
                                href="/tags/{{ $tag->slug }}">{{ $tag->name }}</a>
                    @empty
                        No Tags
                    @endforelse
                </div>
            </div>
            {{--            tags --}}
            {{--            previous --}}
            <div>
                <h2 class="text-xs uppercase tracking-wide text-gray-500 dark:text-gray-400">Previous
                    Article</h2>
                <div class="text-primary hover:text-red-600 dark:hover:text-red-600">
                    @if($previous)
                        <a
                                href="{{ route('show',$previous->slug) }}">
                            {{ $previous->title }}
                        </a>
                    @endif
                </div>
            </div>
            {{-- back --}}
            <div class="py-4 py-8">
                <a class="text-gray-500 hover:text-gray-600 dark:hover:text-gray-400" href="{{ route('dashboard') }}">←
                    Back
                    to the blog</a>
            </div>
        </div>
        {{--        post--}}
        <div class="grow w-3/4">
            <div class="prose max-w-none dark:text-gray-300 pb-8 dark:prose-dark">
                <x-markdown>
                    {!! $post->body !!}
                </x-markdown>
            </div>
            {{--            copyrht--}}
            <div class=" border-b border-t border-gray-300 dark:border-gray-700">
                <div class="pt-6 pb-6 text-sm text-gray-700 dark:text-gray-300">
                    <a target="_blank" rel="nofollow"
                       href="/">
                        Discuss on Twitter</a> •
                    <a target="_blank" rel="noopener noreferrer"
                       href="/">View
                        on GitHub</a></div>
            </div>
        </div>
    </div>


</x-app-layout>
