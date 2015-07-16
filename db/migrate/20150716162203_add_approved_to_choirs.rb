class AddApprovedToChoirs < ActiveRecord::Migration
  def change
    add_column :choirs, :approved, :boolean, default: false
  end
end
