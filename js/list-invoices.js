$(document).ready(function(){
  $.ajax({
    method: "GET",
    url: "comp/list_invoices.php"
  })
  .done(function( data ) {

    console.log(data);

  });


});
