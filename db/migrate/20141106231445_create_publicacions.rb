class CreatePublicacions < ActiveRecord::Migration
  def change
    create_table :publicacions do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.string :categoria
      t.datetime :vencimiento
      t.integer :user_id

      t.timestamps
    end
  end
end
