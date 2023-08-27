<div class="flex w-full content-between justify-center gap-4 mt-20 font-poppins">
    <div class="w-full">
        <div class="flex"><h1
                    class="pb-6 text-3xl font-black leading-9 tracking-tight text-gray-900 dark:text-gray-100 sm:text-4xl sm:leading-10 md:text-6xl md:leading-14">
                {{ $site->h1_title }}</h1>
            <div
                    class="animate__animated animate__tada animate__slower animate__infinite infinite ml-5 text-6xl">
                👋
            </div>
        </div>
        <p class="text-lg leading-7 text-gray-500 dark:text-gray-400">{{ $site->h2_title }}</p></div>
    <div class="flex w-1/2 flex-col items-center">
        <div><span
                    style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%"><span
                        style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%"><img
                            style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0"
                            alt="" aria-hidden="true"
                            src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27200%27%20height=%27200%27/%3e"></span><img
                        alt="bo3bdo" src="{{ Storage::url($site->image) }}"
                        class="rounded-full shadow-md"
                        style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"
                    </span>
        </div>
        <div><p class="text-gray-500 dark:text-gray-400">{{ $site->image_text }}</p></div>
        <div>
            <div class="flex space-x-3 pt-6"><a class="text-sm text-gray-500 transition hover:text-gray-600"
                                                target="_blank" rel="noopener noreferrer"
                                                href="https://github.com/bo3bdo"><span
                            class="sr-only">github</span>
                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"
                         class="fill-current text-gray-700 hover:text-blue-500 dark:text-gray-200 dark:hover:text-blue-400 h-8 w-8">
                        <path
                                d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.07 3.633 17.7 3.633 17.7c-1.087-.744.084-.729.084-.729 1.205.084 1.838 1.236 1.838 1.236 1.07 1.835 2.809 1.305 3.495.998.108-.776.417-1.305.76-1.605-2.665-.3-5.466-1.332-5.466-5.93 0-1.31.465-2.38 1.235-3.22-.135-.303-.54-1.523.105-3.176 0 0 1.005-.322 3.3 1.23.96-.267 1.98-.399 3-.405 1.02.006 2.04.138 3 .405 2.28-1.552 3.285-1.23 3.285-1.23.645 1.653.24 2.873.12 3.176.765.84 1.23 1.91 1.23 3.22 0 4.61-2.805 5.625-5.475 5.92.42.36.81 1.096.81 2.22 0 1.606-.015 2.896-.015 3.286 0 .315.21.69.825.57C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"></path>
                    </svg>
                </a><a class="text-sm text-gray-500 transition hover:text-gray-600" target="_blank"
                       rel="noopener noreferrer" href="https://twitter.com/Hamad3bdulla"><span
                            class="sr-only">twitter</span>
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                         class="fill-current text-gray-700 hover:text-blue-500 dark:text-gray-200 dark:hover:text-blue-400 h-8 w-8">
                        <path
                                d="M23.953 4.57a10 10 0 0 1-2.825.775 4.958 4.958 0 0 0 2.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 0 0-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 0 0-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 0 1-2.228-.616v.06a4.923 4.923 0 0 0 3.946 4.827 4.996 4.996 0 0 1-2.212.085 4.936 4.936 0 0 0 4.604 3.417 9.867 9.867 0 0 1-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 0 0 7.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0 0 24 4.59z"></path>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</div>
