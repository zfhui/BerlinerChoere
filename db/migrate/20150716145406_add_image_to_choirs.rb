class AddImageToChoirs < ActiveRecord::Migration
  def change
    add_column :choirs, :image, :string
  end
end
