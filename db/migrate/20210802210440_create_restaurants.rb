class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :style
      t.string :street 
      t.string :city
      t.string :image_url
      t.integer :like
      t.integer :unlike
    end
  end
end
