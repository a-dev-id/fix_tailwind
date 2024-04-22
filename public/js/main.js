$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 50) {
            $(".logo")
                .addClass("shrink")
                .removeClass("brightness-0 invert-[1]");
            $(".book-now-nav").removeClass("btn-white").addClass("btn-black");
            $(".nav-items").addClass("py-2").removeClass("py-4");
            $(".navbar")
                .removeClass("bg-black/30 text-white")
                .addClass("bg-white text-gray-800");
            $(".nav-border-b")
                .removeClass("border-white")
                .addClass("border-black");
            $(".item").addClass("text-gray");
        } else {
            $(".logo")
                .removeClass("shrink")
                .addClass("brightness-0 invert-[1]");
            $(".book-now-nav").removeClass("btn-black").addClass("btn-white");
            $(".nav-items").removeClass("py-2").addClass("py-4");
            $(".navbar")
                .addClass("bg-black/30 text-white")
                .removeClass("bg-white text-gray-800");
            $(".nav-border-b")
                .addClass("border-white")
                .removeClass("border-black");
            $(".item").removeClass("text-gray");
        }
    });
});
