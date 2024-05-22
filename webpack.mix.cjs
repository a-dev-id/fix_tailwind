const mix = require("laravel-mix");

mix
    .js("resources/js/app.js", "public/js")
    .postCss("resources/css/app.css", "public/css", [require("tailwindcss")]),
    mix.browserSync("192.168.1.11:8000");

if (mix.inProduction()) {
    mix.version();
}
