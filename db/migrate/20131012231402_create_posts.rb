class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :user
      t.string :title
      t.string :description
      t.string :price
      t.string :street
      t.string :cross_street
      t.string :city
      t.string :state
      t.integer :zipcode
    end
  end

  def down
    remove_table :posts
  end
end
