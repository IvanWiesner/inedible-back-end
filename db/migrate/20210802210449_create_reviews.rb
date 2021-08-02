class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :restaurant, foreign_key: true, null: false
      t.belongs_to :user, foreign_key: true, null: false
      t.string :comment
      t.timestamps
    end
  end
end
