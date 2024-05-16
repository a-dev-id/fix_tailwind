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

$(document).ready(function () {
    $("#open-offcanvas").click(function () {
        $("#offcanvas").removeClass("hidden").addClass("offcanvas-open");
        $("#offcanvas-overlay").removeClass("hidden");
    });

    $("#close-offcanvas, #offcanvas-overlay").click(function () {
        $("#offcanvas").removeClass("offcanvas-open").addClass("hidden");
        $("#offcanvas-overlay").addClass("hidden");
    });
});

// $(document).ready(function () {
//     function lazyLoad() {
//         $(".lazy").each(function () {
//             var imagePos = $(this).offset().top;
//             var windowHeight = $(window).height();
//             var topOfWindow = $(window).scrollTop();
//             if (imagePos < topOfWindow + windowHeight + 100) {
//                 $(this).attr("src", $(this).attr("data-src"));
//                 $(this).removeClass("lazy");
//             }
//         });
//     }
//     lazyLoad();
//     $(window).scroll(function () {
//         lazyLoad();
//     });
// });

$(document).ready(function () {
    // Lazy load images
    var lazyImages = [].slice.call(document.querySelectorAll("img.lazy"));
    if ("IntersectionObserver" in window) {
        let lazyImageObserver = new IntersectionObserver(function (
            entries,
            observer,
        ) {
            entries.forEach(function (entry) {
                if (entry.isIntersecting) {
                    let lazyImage = entry.target;
                    lazyImage.src = lazyImage.dataset.src;
                    lazyImage.classList.remove("lazy");
                    lazyImageObserver.unobserve(lazyImage);
                }
            });
        });

        lazyImages.forEach(function (lazyImage) {
            lazyImageObserver.observe(lazyImage);
        });
    } else {
        // Fallback for older browsers
        lazyImages.forEach(function (lazyImage) {
            lazyImage.src = lazyImage.dataset.src;
            lazyImage.classList.remove("lazy");
        });
    }
});
