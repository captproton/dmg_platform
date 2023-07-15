// To see this message, add the following to the `<head>` section in your
// views/layouts/application.html.erb
//
//    <%= vite_client_tag %>
//    <%= vite_javascript_tag 'application' %>
console.log('Vite ⚡️ Rails')

// If using a TypeScript entrypoint file:
//     <%= vite_typescript_tag 'application' %>
//
// If you want to use .jsx or .tsx, add the extension:
//     <%= vite_javascript_tag 'application.jsx' %>

console.log('Visit the guide for more information: ', 'https://vite-ruby.netlify.app/guide/rails')

// Example: Load Rails libraries in Vite.
//
import * as Turbo from '@hotwired/turbo'
Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()

// Import all channels.
const channels = import.meta.globEager('./**/*_channel.js')

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'

// Create vue app
import { createApp } from 'vue';

// Import vue components
import App from '../components/App.vue';
import Sitenav from '../components/Sitenav.vue';

// Mount vue app
const app = createApp(App).mount('#app');

// Mount vue components
const sitenav = createApp(Sitenav).mount('#sitenav');
