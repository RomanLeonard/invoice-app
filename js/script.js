$(document).ready(function(){

    // submit new invoice
    $('.invoice-submit-btn').on('click', function(){
        

        $.ajax({
            method: "POST",
            url: "comp/create_invoice.php",
            data: { 
                client_name: $('input[name="client_name"]').val(),
                client_address: $('input[name="client_address"]').val(),
                client_phone: $('input[name="client_phone"]').val()
            }
        })
        .done(function( data ) {
            console.log( data );
        });



    });


});