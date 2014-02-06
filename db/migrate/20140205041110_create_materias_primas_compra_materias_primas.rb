class CreateMateriasPrimasCompraMateriasPrimas < ActiveRecord::Migration
  def change
    create_table :materias_primas_compra_materias_primas, :id => false do |t|
    	t.integer :materia_prima_id
    	t.integer :compra_materia_prima_id
    end
  end
end
