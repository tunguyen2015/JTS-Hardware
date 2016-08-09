$(document).ready(function () {
    $("#check-out").click(function () {
        var ame = /^(?:3[47][0-9]{13})$/;
        var visa = /^(?:4[0-9]{12}(?:[0-9]{3})?)$/;
        var master = /^(?:5[1-5][0-9]{14})$/;
        var discover = /^(?:6(?:011|5[0-9][0-9])[0-9]{12})$/;
        var numValue = $("#CardNum").val().replace(/ /g, '');

        if (!numValue.match(ame) && !numValue.match(visa) && !numValue.match(master) && !numValue.match(discover)) {
            alert("The credit card number is invalid. Try again!");
            return false;
        }
    });
});