class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :category
      t.datetime :expiration
      t.integer :user_id

      t.timestamps
    end
  end
end
