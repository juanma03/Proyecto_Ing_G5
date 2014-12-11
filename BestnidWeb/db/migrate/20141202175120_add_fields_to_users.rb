class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :address, :string
  	add_column :users, :phone, :string
  	add_column :users, :credit_card_owner, :string
  	add_column :users, :credit_card_number, :string
  	add_column :users, :credit_card_expiration_date, :date
  	add_column :users, :adult, :boolean
  	add_column :users, :city, :string
    add_column :users, :admin, :boolean
  end
end
