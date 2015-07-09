class CreateChoirs < ActiveRecord::Migration
  def change
    create_table :choirs do |t|
      t.string  :name, null: false

      t.string  :street_name
      t.string  :house_no
      t.integer :zipcode
      t.string  :city, default: "Berlin"
      t.string  :country, default: "DE"

      t.string  :website, default: ""

      t.float   :latitude
      t.float   :longitude

      t.timestamps null: false
    end
  end
end
