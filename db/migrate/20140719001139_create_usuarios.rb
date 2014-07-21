class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario
      t.string :contrasena
      t.string :nombre
    end
  end
end
