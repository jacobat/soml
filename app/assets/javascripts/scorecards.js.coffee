# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

makeEditable = ->
  jQuery('.editable').each (index, element) ->
    $element = jQuery(element)
    value = $element.text()
    $element.html("<input type=\"text\" name=\"kpi_value[value]\" value=\"#{value}\">")
    $input = $element.find('input')
    $input.change ->
      kpi_id = $element.data('kpi-id')
      region_id = $element.data('region-id')
      value = jQuery(this).val()
      jQuery.ajax({
        type: 'POST',
        url: "/regions/#{region_id}/kpi_values.json",
        data: {kpi_value: { kpi_id: kpi_id, value: value}},
        # success: success,
      });
      console.log kpi_id, region_id, jQuery(this).val()

jQuery ->
  jQuery('.make_editable').click makeEditable
