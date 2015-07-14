class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :name, null: false

      t.timestamps null: false
    end

    add_column :choirs, :category_id, :integer
    add_index  :choirs, :category_id
  end
end
