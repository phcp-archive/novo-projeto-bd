class CreateCompraMateriasPrimas < ActiveRecord::Migration
  def change
    create_table :compra_materias_primas do |t|
      t.datetime :data
      t.integer :status
      t.float :pagamento
      t.belongs_to :fornecedor, index: true

      t.timestamps
    end
  end
end
