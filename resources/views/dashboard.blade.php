<x-app-layout>
    <x-lastposth1/>
    @forelse($posts as $post)
        <x-post :post="$post" class="mt-5"/>
    @empty
        <p class="text-center">No posts yet</p>
    @endforelse

    {{--    add link pagination if its more than 10 posts--}}
    @if($posts)
        <div class="mt-5">
            @if($posts->links())
                {{ $posts->links() }}
            @endif
        </div>
    @endif
</x-app-layout>
