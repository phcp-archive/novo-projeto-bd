class CreateProdutoComprados < ActiveRecord::Migration
  def change
    create_table :produto_comprados do |t|
      t.integer :produto_id
      t.integer :compra_produto_id

      t.timestamps
    end
  end
end
