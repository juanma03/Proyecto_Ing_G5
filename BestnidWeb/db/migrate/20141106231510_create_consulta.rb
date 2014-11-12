class CreateConsulta < ActiveRecord::Migration
  def change
    create_table :consulta do |t|
      t.string :pregunta
      t.string :respuesta
      t.integer :publicacion_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
