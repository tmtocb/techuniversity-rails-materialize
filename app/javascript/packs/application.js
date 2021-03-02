require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import '../stylesheets/application'
import 'materialize-css/dist/js/materialize'

$(document).on('turbolinks:load', function() {
  $(".dropdown-trigger").dropdown();
  $('.sidenav').sidenav();
})