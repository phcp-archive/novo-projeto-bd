class AddQuantodadeToProdutoComprados < ActiveRecord::Migration
  def change
    add_column :produto_comprados, :quantidade, :integer
  end
end
