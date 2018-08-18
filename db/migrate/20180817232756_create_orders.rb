class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :tituto
      t.text :comentario
      t.text :nombre
      t.integer :cantidad
      t.string :unidad
      t.string :string
      t.string :proveedor

      t.timestamps
    end
  end
end
