class CreateMateriasPrimas < ActiveRecord::Migration
  def change
    create_table :materias_primas do |t|
      t.string :nome
      t.string :codigo
      t.text :descricao
      t.integer :quantidade

      t.timestamps
    end
  end
end
