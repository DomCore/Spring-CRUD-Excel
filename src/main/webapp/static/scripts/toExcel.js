
var tableToExcel = (function () {

        var uri = 'data:application/vnd.ms-excel;base64,'

            ,
            template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:Selected/>\n<x:DisplayGridlines/>     ' +
                '     <x:ProtectContents>False</x:ProtectContents>\n' +
                '     <x:ProtectObjects>False</x:ProtectObjects>\n' +
                '     <x:ProtectScenarios>False</x:ProtectScenarios>\n' +
                '    </x:WorksheetOptions></x:WorksheetOptions></x:ExcelWorksheet>  </x:ExcelWorksheets>\n' +
                '  <x:ProtectStructure>False</x:ProtectStructure>\n' +
                '  <x:ProtectWindows>False</x:ProtectWindows></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table style="th:nth-child(3) {\n' +
                '    display: none;\n' +
                '}">{table}</table></body></html>'

            , base64 = function (s) {
                    return window.btoa(unescape(encodeURIComponent(s)))
            }

            , format = function (s, c) {
                    return s.replace(/{(\w+)}/g, function (m, p) {
                            return c[p];
                    })
            }

        return function (table, name) {

                if (!table.nodeType) table = document.getElementById(table)

                var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}

                window.location.href = uri + base64(format(template, ctx))

        }

})()

