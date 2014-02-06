class CreateMateriaUtilizadas < ActiveRecord::Migration
  def change
    create_table :materia_utilizadas do |t|
      t.integer :materia_prima_id
      t.integer :producao_id

      t.timestamps
    end
  end
end
