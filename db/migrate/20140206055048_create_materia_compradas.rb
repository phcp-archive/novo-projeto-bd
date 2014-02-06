class CreateMateriaCompradas < ActiveRecord::Migration
  def change
    create_table :materia_compradas do |t|
      t.integer :materia_prima_id
      t.integer :compra_materia_prima_id

      t.timestamps
    end
  end
end
