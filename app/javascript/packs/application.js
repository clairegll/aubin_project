// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initMapbox } from '../components/init_mapbox';
import { initAutocomplete } from '../components/init_autocomplete';
import { initCookies } from '../components/init_cookies';

document.addEventListener('turbolinks:load', () => {
  initCookies();

  if (window.location.pathname.includes('/missions/')) {
    initMapbox();
    initAutocomplete();
  }
})

require("trix")
require("@rails/actiontext")
