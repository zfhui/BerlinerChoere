class AddLocationNameToChoirs < ActiveRecord::Migration
  def change
    add_column :choirs, :location_name, :string, default: ""
  end
end
