// phone
$(document).ready(function() {
    var maxField = 2;
    var addPhone = $('.pls');
    var phoneWrapper = $('.phone');
    var fieldHTML = '<div class="phone_item"><input type="number" class="data_phone" name="applicant[phone_no2]" value=""/><a href="javascript:void(0);" class="remove_phone"><i class="minus fa fa-minus" ></i></a></div>'; //New input field html 
    var x = 1;
    $(addPhone).click(function() {


        if (x < maxField) {
            x++;
            $(phoneWrapper).append(fieldHTML);
        }
    });
    $(phoneWrapper).on('click', '.remove_phone', function(e) {
        e.preventDefault();
        $(this).parent('div').remove();
        x--;
    });
});
//programming
$(document).ready(function() {
    var maxField = 5;
    var addLevel = $('.pls1');
    var levelWrapper = $('.level');
    var x = 1;
    $(addLevel).click(function() {
        if (x < maxField) {
            var fieldHTML = '<div class="level_item"><input type="text" class="lan" name="applicant[programming[][language]]" ' +
                'value=""/><input type="text" class="lvl1" name="applicant[programming[][level]]" value=""/><a href="javascript:void(0);" class="remove_phone">' +
                '<i class="lvl-min fa fa-minus"></i></a></div>';

            x++;
            $(levelWrapper).append(fieldHTML);
        }
    });
    $(levelWrapper).on('click', '.remove_phone', function(e) {
        e.preventDefault();
        $(this).parent('div').remove();
        x--;
    });
});

//checkbox
$(document).ready(function() {
    $(".job").change(function() {
        if (this.checked) {
            $(".chk").css("display", "block");
        } else {
            $(".chk").css("display", "none");
        }
    });
});