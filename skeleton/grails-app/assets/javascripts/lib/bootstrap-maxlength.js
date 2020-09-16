! function ($) {
    $.fn.maxlength = function () {
        $(this).each(function () {
            var max = $(this).attr('maxlength');

            if (max <= 0) {
                return;
            }

            if (!$(this).parent().hasClass('input-group')) {
                $(this).wrap("<div class=\"input-group\"></div>");
            }
            $(this).after("<div class=\"input-group-append\"><span class=\"input-group-text maxlength\"> </span></div>");

            $(this).bind('input', function (e) {
                var max = $(this).attr('maxlength');
                var val = $(this).val();
                var cur = 0;

                if (val) {
                    cur = val.length;
                }

                var left = max - cur;
                $(this).next().children(".maxlength").text(left.toString());

                return this;
            }).trigger('input');
        });
        return this;
    };
}(window.jQuery);