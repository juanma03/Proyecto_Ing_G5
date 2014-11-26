class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :titular_tarjeta, :string
    add_column :users, :numero_tarjeta, :string
    add_column :users, :vencimiento_tarjeta, :date
    add_column :users, :mayor_18, :boolean, default: false
    add_column :users, :localidad, :string
  end
end
