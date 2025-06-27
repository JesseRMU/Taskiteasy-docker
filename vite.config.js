// vite.config.js
import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',      // Tailwind / Breeze
                'resources/js/app.js',
                'resources/sass/app.scss',  // Jouw eigen styles met Bulma
            ],
            refresh: true,
        }),
    ],
});
