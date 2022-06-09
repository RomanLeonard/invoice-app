$(document).ready(function(){

    // submit new invoice
    $('.invoice-submit-btn').on('click', function(){

        var items = [];
        $('input[name="item"]').each(function( index ){
            item  = $(this).val()
            price = 24;
            items.push({ item : price });
        });

        $.each(obj, function (index, value) {
            alert( index + ' : ' + value );
        });

        $.ajax({
            method: "POST",
            url: "comp/create_invoice.php",
            data: { 
                client_name: $('input[name="client_name"]').val(),
                client_address: $('input[name="client_address"]').val(),
                client_phone: $('input[name="client_phone"]').val(),

                invoice_items: items
            }
        })
        .done(function( data ) {
            console.log( data );
        });



    });


});