class CreateProdutosCompraProdutos < ActiveRecord::Migration
  def change
    create_table :produtos_compra_produtos, :id => false do |t|
    	t.integer :produto_id
    	t.integer :compra_produto_id
    end
  end
end
