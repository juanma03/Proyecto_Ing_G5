class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
      t.string :necesidad
      t.float :monto
      t.integer :publicacion_id
      t.integer :user_id

      t.timestamps
    end
  end
end
