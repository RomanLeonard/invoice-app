function notification(type, message){
  $('body').append(`<div class="notification `+type+`">
    <div class="wrapper">
      <span class="text">`+message+`</span>
    </div>
  </div>`);

  setTimeout(function(){
    $('.notification').remove();
  }, 1500);
}
