String.prototype.unescapeHtml = function () {
    var temp = document.createElement("div");
    temp.innerHTML = this;
    var result = temp.childNodes[0].nodeValue;
    temp.removeChild(temp.firstChild);
    return result;
}

function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  content = content.unescapeHtml();
  $(content).insertBefore($(link));

}

function datatable_list(table, ordered_columns){
  var oTable = $(table).dataTable({
    "iDisplayLength": -1,
    "bAutoWidth": false,
    "bJQueryUI": true,
    "bSort": true,
    "sDom": '<"H"lTfr>t<"F"ip>',
    "oTableTools": {
       "sSwfPath": "DataTables-1.8.1/media/swf/copy_cvs_xls_pdf.swf"
    },
    "aoColumnDefs": [ { "bSortable": false, "aTargets": ordered_columns }],
    'oLanguage': {
      'oPaginate': {
        'sFirst': 'primeira',
        'sLast': 'ultima',
        'sNext': 'próxima',
        'sPrevious': 'anterior'
      },
      'sInfo': 'Mostrando _START_ a _END_ de _TOTAL_ entradas',          
      'sInfoEmpty': "Mostrando de 0 até 0 de 0 registros",
      'sEmptyTable': 'não há registros para exibir',
      'sInfoFiltered': '(filtrando de _MAX_)',
      'sInfoPostFix': '',
      'sLengthMenu': 'Exibe _MENU_ registros',
      'sProcessing': 'processando',
      'sSearch': 'Pesquisar',
      'sZeroRecords': 'não há registros para exibir'
    }
  });
}

function zebraListing(){
  $('.more-info div p:odd').addClass('odd');
  $('.more-info div p:even').addClass('even');
}

function show_field(main_field, field, verification_type, expected_value)
{
  if (verification_type == "checkbox"){
    if ($(main_field).is(':checked')){
      jQuery(field).attr('style','display:block; !important');
    }
  }
  else{
    if ($(main_field).val() == expected_value){
      jQuery(field).attr('style','display:block; !important');
    }
  }
}