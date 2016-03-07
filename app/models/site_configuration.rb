class SiteConfiguration < ActiveRecord::Base
  validates :site_name, presence: true
  validates :url, presence: true, url: true
  validates :variations, inclusion: 1..100
  validates :campaign_delimiter, presence: { message: "can't be empty if 'Enable Origin Experiments' is selected"}, if: :origin_experiments_checked?
  validates :factor_delimiter, presence: { message: "can't be empty if 'Enable Origin Experiments' is selected"}, if: :origin_experiments_checked?

  def origin_experiments_checked?
    origin_experiments
  end
end
