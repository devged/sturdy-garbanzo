document.addEventListener 'turbolinks:load', ->

  # Main header
  if $('.js-main-header-menu').find('li').length
    $('.js-main-header-menu').mainHeaderflexMenu();

  # Datatables
  $('.js-data-table').each () ->

    options = {}
    options.dom = '<"dataTables_top"lf>t<"dataTables_bottom"irp>'
    $(this).DataTable(options) unless $(this).hasClass('dataTable')

  # Datepicker
  $('.datepicker').datepicker
    dateFormat: 'yy-mm-dd'

# For changing the IPT value when the inception date is changed
$(document).on 'change', '#policy_inception_date', () ->

  $.ajax
    url: '/insurance_premium_taxes/current.json'
    dataType: 'json'
    data: { date: $(this).val() }
    success: (data) ->
      if data == null
        $('#policy_ipt').val('')
        alert('There is no IPT specified for this date. You will have to enter one manually.')
      else
        $('#policy_ipt').val(data.percentage)
