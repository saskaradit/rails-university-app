// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery

require("jquery")
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'materialize-css/dist/js/materialize'
// import '../stylesheets/application'



Rails.start()
Turbolinks.start()
ActiveStorage.start()

jQuery(document).on('turbolinks:load', function(){
    jQuery(".dropdown-trigger").dropdown();
    jQuery('.sidenav').sidenav();
})

// document.addEventListener('DOMContentLoaded', function() {
//     var elems = document.querySelectorAll('.dropdown-trigger');
//     var instances = M.Dropdown.init(elems, options);
//   });

// document.addEventListener("turbolinks:load", function() {
//     document.querySelector(".dropdown-trigger").dropdown();
//     document.querySelector('.sidenav').sidenav();
// });