class SiteConfigurationsController < ApplicationController

  def new
    @site_configuration = SiteConfiguration.new
  end

  def create
    @site_configuration = SiteConfiguration.new(site_configuration_params)
    if @site_configuration.save
      flash[:notice] = "Site Configuration added successfully."
      redirect_to new_site_configuration_path
    else
      flash.now[:errors] = @site_configuration.errors.full_messages
      @amps = site_configuration_params[:amps]
      @origin_experiments = site_configuration_params[:origin_experiments]
      render :new
    end
  end

  def site_configuration_params
    params.require(:site_configuration).permit(:site_name, :status, :url, :variations, :behavior, :search_text_failures, :amps, :amps_configuration, :origin_experiments, :campaign_delimiter, :factor_delimiter)
  end

end
