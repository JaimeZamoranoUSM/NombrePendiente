class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.text :nombre
      t.integer :cantidad
      t.string :unidad

      t.timestamps
    end
  end
end
