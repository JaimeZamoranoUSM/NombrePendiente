class AddUserIdToSolicitudes < ActiveRecord::Migration[5.2]
  def change
    add_reference :solicitudes, :user, foreign_key: true
    add_column :solicitudes, :estado, :string
    add_column :solicitudes, :f_requerida, :date
    add_column :solicitudes, :f_estimada, :date
  end
end
