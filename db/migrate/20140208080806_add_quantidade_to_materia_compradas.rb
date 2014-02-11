class AddQuantidadeToMateriaCompradas < ActiveRecord::Migration
  def change
    add_column :materia_compradas, :quantidade, :integer
  end
end
