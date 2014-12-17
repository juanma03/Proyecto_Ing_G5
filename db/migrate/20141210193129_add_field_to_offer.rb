class AddFieldToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :security_code, :string
  end
end
