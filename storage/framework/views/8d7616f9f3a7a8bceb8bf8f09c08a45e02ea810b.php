<?php if(session()->has('success')): ?>
    <div x-data="{ show: true }"
         x-init="setTimeout(() => show = false, 4000)"
         x-show="show"
         class="fixed bg-blue-500 text-white py-2 px-4 rounded-xl bottom-3 right-3 text-sm"
    >
        <p><?php echo e(session('success')); ?></p>
    </div>
<?php endif; ?>
<?php /**PATH C:\Users\abdal\Downloads\Very important Stuff (really)\Projects\Laravel-From-Scratch-Blog-Project\resources\views/components/flash.blade.php ENDPATH**/ ?>