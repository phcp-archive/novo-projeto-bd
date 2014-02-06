class CreateMateriasPrimasProducoes < ActiveRecord::Migration
  def change
    create_table :materias_primas_producoes, :id => false do |t|
    	t.integer :materia_prima_id
    	t.integer :producao_id
    end
  end
end
