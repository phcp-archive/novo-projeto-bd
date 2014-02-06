class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cadastro
      t.string :email
      t.boolean :juridico
      t.string :cargo
      t.string :senha

      t.timestamps
    end
  end
end
