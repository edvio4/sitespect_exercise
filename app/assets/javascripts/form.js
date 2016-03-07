$(document).ready(function() {
  var checkbox_amps = document.getElementById('site_configuration_amps');
  checkbox_amps.onchange = function() {
    if(this.checked) {
      $("[for=site_configuration_amps]").after('<div class="amps_configuration">' +
      '<label for="site_configuration_amps_configuration">AMPS Configuration</label>' +
      '<textarea name="site_configuration[amps_configuration]" id="site_configuration_amps_configuration"></textarea>' +
      '</div>');
    } else {
      $(".amps_configuration").remove();
    }
  };

  var checkbox_origin = document.getElementById('site_configuration_origin_experiments');
  checkbox_origin.onchange = function() {
    if(this.checked) {
      $("[for=site_configuration_origin_experiments]").after('<div class="campaign_delimiter">' +
        '<label for="site_configuration_campaign_delimiter">Origin Experiment Campaign Delimiter</label>' +
        '<div class="row campaign_delimiter_input">' +
          '<div class="small-4 medium-3 large-2 columns">' +
            '<input type="text" name="site_configuration[campaign_delimiter]" id="site_configuration_campaign_delimiter">' +
          '</div>' +
        '</div>' +
      '</div>' +
      '<div class="factor_delimiter">' +
        '<label for="site_configuration_factor_delimiter">Origin Experiment Factor Delimiter</label>' +
        '<div class="row factor_delimiter_input">' +
          '<div class="small-4 medium-3 large-2 columns">' +
            '<input type="text" value="" name="site_configuration[factor_delimiter]" id="site_configuration_factor_delimiter">' +
          '</div>' +
        '</div>' +
      '</div>');
    } else {
      $(".campaign_delimiter").remove();
      $(".factor_delimiter").remove();
    }
  };
});
