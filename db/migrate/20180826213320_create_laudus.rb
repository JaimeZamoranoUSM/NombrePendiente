class CreateLaudus < ActiveRecord::Migration[5.2]
  def change
    create_table :laudus do |t|
      t.integer :userId

      t.timestamps
    end
  end
end
