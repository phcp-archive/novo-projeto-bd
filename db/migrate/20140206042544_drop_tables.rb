class DropTables < ActiveRecord::Migration
  def up
  	drop_table :materias_primas_compra_materias_primas
  	drop_table :materias_primas_producoes
  	drop_table :produtos_compra_produtos
  	drop_table :produtos_solicitacoes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
