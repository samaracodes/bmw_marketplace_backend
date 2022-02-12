class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :image
      t.string :condition
      t.string :status
      t.string :listing_type
      t.string :duration
      t.integer :user_id
      

      t.timestamps
    end
  end
end
