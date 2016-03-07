class CreateSiteConfigurations < ActiveRecord::Migration
  def change
    create_table :site_configurations do |t|
      t.string :site_name, null: false
      t.string :status, null: false
      t.string :url, null: false
      t.integer :variations, null: false
      t.string :behavior, null: false
      t.boolean :search_text_failures, null: false, default: true
      t.boolean :amps, null: false, default: false
      t.string :amps_configuration, null: false, default: ""
      t.boolean :origin_experiments, null: false, default: false
      t.string :campaign_delimiter, null: false, default: ""
      t.string :factor_delimiter, null: false, default: ""

      t.timestamps null: false
    end
  end
end
