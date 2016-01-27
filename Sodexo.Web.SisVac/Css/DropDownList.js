function AplicarEstiloDropDownList()
{
    var lstSpan = document.getElementsByName("DropDownListSeleccionado");
    var lstSpan2 = document.getElementsByName("ddlDocumentoContratante");

    if (!$.browser.opera) {

        // select element styling
        $('.DropDownListMedianoCampo select').each(function () {
            var title = $(this).attr('title');
            if ($('option:selected', this).val() != '') title = $('option:selected', this).text();
            $(this)
                .css({ 'z-index': 10, 'opacity': 0, '-khtml-appearance': 'none' })
                .after('<span>' + title + '</span>')
                .change(function () {
                    val = $('option:selected', this).text();
                    $(this).next().text(val);
                })
        });


        // select element styling
        $('.DropDownListLargoCampo select').each(function () {
            var title = $(this).attr('title');
            if ($('option:selected', this).val() != '') title = $('option:selected', this).text();
            $(this)
                .css({ 'z-index': 10, 'opacity': 0, '-khtml-appearance': 'none' })
                .after('<span>' + title + '</span>')
                .change(function () {
                    val = $('option:selected', this).text();
                    $(this).next().text(val);
                })
        });

        // select element styling
        $('.DropDownListCampo120 select').each(function () {
            var title = $(this).attr('title');
            if ($('option:selected', this).val() != '') title = $('option:selected', this).text();
            $(this)
                .css({ 'z-index': 10, 'opacity': 0, '-khtml-appearance': 'none' })
                .after('<span>' + title + '</span>')
                .change(function () {
                    val = $('option:selected', this).text();
                    $(this).next().text(val);
                })
        });


        // select element styling
        $('.DropDownListCampo70 select').each(function () {
            var title = $(this).attr('title');
            if ($('option:selected', this).val() != '') title = $('option:selected', this).text();
            $(this)
                .css({ 'z-index': 10, 'opacity': 0, '-khtml-appearance': 'none' })
                .after('<span>' + title + '</span>')
                .change(function () {
                    val = $('option:selected', this).text();
                    $(this).next().text(val);
                })
        });

    };
}
