﻿neemo = neemo || {};
neemo.svc = (function ($, urls) {

    function call(url, data, type) {
        type = type || 'POST';
        return $.ajax({
            url: url,
            type: type,
            data: JSON.stringify( data ),
            dataType: 'json',
            contentType: 'application/json'
        });
    }
    
    return {
        addProduct: function (productId, qty, successFnc, qtyTooLargeFnc) {
            call(urls.addProduct, { productId: productId, qty: qty })
                .done(function (response) {
                    if (response.Added) {
                        successFnc(response.Item);
                    }
                    if (response.QuantityTooLarge) {
                        qtyTooLargeFnc();
                    }
                });
        },
        removeProduct: function(lineItemId) {
            return call(urls.removeProduct, { lineItemId: lineItemId });
        },
        getItems: function () {
            return call(urls.getItems, null, 'GET');
        },
        updateQuantity: function (lineItemId, productId, qty, successFnc, qtyTooLargeFnc) {
            call(urls.updateQuantity, { lineItemId: lineItemId, productId: productId, newQuantity: qty })
                .done(function(response) {
                    if (response.Updated) {
                        successFnc();
                    }
                    if (response.QuantityTooLarge) {
                        qtyTooLargeFnc();
                    }
                });
        }
    }
})(jQuery, neemo.endpoints.cart);