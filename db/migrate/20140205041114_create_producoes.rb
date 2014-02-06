class CreateProducoes < ActiveRecord::Migration
  def change
    create_table :producoes do |t|
      t.datetime :data
      t.integer :quantidade
      t.belongs_to :produto, index: true

      t.timestamps
    end
  end
end
