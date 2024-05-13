<div class="flex justify-between">
    <div class="flex flex-1 justify-between">
        <!-- Previous Page Link -->
        @if ($paginator->onFirstPage())
        <span class="mr-2 px-2 py-1 text-gray-500 bg-gray-200 rounded cursor-not-allowed">Previous</span>
        @else
        <span wire:click="previousPage" class="mr-2 px-2 py-1 bg-[#a88444] text-white rounded cursor-pointer">Previous</span>
        @endif

        <!-- Next Page Link -->
        @if ($paginator->hasMorePages())
        <span wire:click="nextPage" class="px-2 py-1 bg-[#a88444] text-white rounded cursor-pointer">Next</span>
        @else
        <span class="px-2 py-1 text-gray-500 bg-gray-200 rounded cursor-not-allowed">Next</span>
        @endif
    </div>
</div>