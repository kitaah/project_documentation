# Configuration

## **Correcting npm run dev not working**

In the **.ddev** folder, you need to add this in the **config.yaml** file:
```sh
web_extra_exposed_ports:
  - name: vite
    container_port: 5173
    http_port: 5172
    https_port: 5173
```

In the **vite.config.js** file, you need to add this:
```sh
import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [
        laravel({
            input: 'resources/js/app.jsx',
            refresh: true,
        }),
        react(),
    ],
    server: {
        host: true,
        strictPort: true,
        port: 5173,
        hmr: {
            protocol: 'wss',
            host: `${process.env.DDEV_HOSTNAME}`,
        }
    },
});
```
