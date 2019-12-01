
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require toastr

$(document).ready(function(){
  $(".close-alert").click(function(e){
    $(this).parent().remove();
    e.preventDefault();
  });

  setTimeout(function(){
    $(".alert").hide()
 }, 4000);
});


if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/service-worker.js', { scope: './' })
    .then(function(reg) {
      console.log('[Companion]', 'Service worker registered!');
      console.log(reg);
    });
}
