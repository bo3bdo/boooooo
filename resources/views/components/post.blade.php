<div class="flex items-center justify-center border-b dark:border-gray-800 border-gray-300 w-full p-6">
    {{--    imag--}}
    <div class="grow-0 self-center">
        <a href="{{ route('show',$post->slug) }}">
            <img
                    loading="lazy"
                    class="rounded-lg h-full w-100 object-fill object-center max-w-[15rem] max-h-[15rem]"
                    src="{{ url($post->post_image ?? url('/images/placeholder.png')) }}">
        </a>
    </div>
    {{--    post--}}
    <div class="grow">
        <div class="ml-5 space-y-5">
            <div class="space-y-6">
                <div>
                    <h2 class="text-2xl font-bold leading-8 tracking-tight">
                        <a class="text-gray-900 dark:text-gray-100" href="{{ route('show',$post->slug) }}">
                            {{ $post->title }}
                        </a></h2>
                    <div class="flex flex-wrap">
                        @forelse($post->tags as $tag)
                            <a class="mr-3 text-xs uppercase text-primary dark:text-yellow-400 hover:text-yellow-600 dark:hover:text-yellow-400"
                               href="/tags/{{ $tag->slug }}">{{ $tag->name }}</a>
                        @empty
                        @endforelse

                    </div>
                </div>
                <div class="prose max-w-none text-gray-500 dark:text-gray-400 ">
                    {{ $post->postinfo }}
                </div>
            </div>
            <div class="text-base font-medium leading-6 flex items-center justify-between">
                <a
                        class="text-primary hover:text-red-600 dark:hover:text-red-400"
                        aria-label="Read &quot;5 Underrated Filament Features&quot;"
                        href="{{ route('show',$post->slug) }}">Read more →</a>
                <div class="text-xs text-primary"> {{ Str::readDuration($post->body). ' min read' }}</div>
            </div>

        </div>
    </div>

</div>
