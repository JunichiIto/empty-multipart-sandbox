// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import jQuery from "jquery";

const $ = jQuery;
$(function() {
  $('.hi-button').click(function() {
    const formData = new FormData();
    axios.post('/hello', formData).then((response) => {
      $('.message').show();
    })
  })
});
