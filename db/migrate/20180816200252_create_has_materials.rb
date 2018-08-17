class CreateHasMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :has_materials do |t|
      t.references :solicitude, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
