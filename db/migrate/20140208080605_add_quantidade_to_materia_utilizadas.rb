class AddQuantidadeToMateriaUtilizadas < ActiveRecord::Migration
  def change
    add_column :materia_utilizadas, :quantidade, :integer
  end
end
