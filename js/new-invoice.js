$(document).ready(function(){
  $.ajax({
    method: "GET",
    url: "comp/last_invoice_number.php"
  })
  .done(function( last_invoice_number ) {
    var invoice_number = last_invoice_number
    $('#last_invoice_number').text( invoice_number );


    // submit new invoice
    $('.invoice-submit-btn').on('click', function(){

      var items = [];
      var total_price = 0;
      $('input[name="item"]').each(function( index ){
        var item   = $(this).val()
        var price  = $(this).closest('.input-with-price').find('input[name="item_price"]').val()
        items.push({ item : price });
        total_price = total_price + parseFloat(price);
      });


      $.ajax({
        method: "POST",
        url: "comp/create_invoice.php",
        data: {
          invoice_number: invoice_number,
          client_name: $('input[name="client_name"]').val(),
          client_address: $('input[name="client_address"]').val(),
          client_phone: $('input[name="client_phone"]').val(),
          shipping_price: $('input[name="shipping_price"]').val(),
          invoice_items: items,
          total_price: total_price
        }
      })
      .done(function( data ) {
        notification('success', 'Success');
      });



    });



  });
});
