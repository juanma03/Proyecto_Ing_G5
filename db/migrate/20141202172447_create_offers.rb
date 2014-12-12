class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :necessity
      t.float :amount
      t.integer :publication_id
      t.integer :user_id

      t.timestamps
    end
  end
end
