/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {
    $('tr #borraritem').click(function (e) {
        e.preventDefault(); //no recargar la pagina
        var elemento = $(this); //guardar variable elemento para saber en cual elemento le dio el click
        var idmenu = elemento.parent().find('#idmenu').text(); //capturar id del producto
        $.ajax({
            url: "borrarItem",
            type: 'POST',
            data: {idmenu: idmenu},
            success: function (r) {
                elemento.parent().parent().remove();
                var elementostabla = $('#shop-table');
                if (elementostabla.length <= 1){
                    $('#cart-container').append("<center><h4>No hay Productos</h4></center>");
                }
                $('#txtSubTotal').text(r);
                $('#txtTotal').text(r);
            }
        });
    });
});
