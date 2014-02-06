class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.float :preco
      t.string :codigo
      t.text :descricao
      t.integer :quantidade

      t.timestamps
    end
  end
end
