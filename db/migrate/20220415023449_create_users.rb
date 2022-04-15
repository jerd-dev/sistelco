class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.integer :dni
      t.string :type_person
      t.date :fecha_emision
      t.date :fecha_vencimiento
      t.string :email
      t.string :telefono_p
      t.string :telefono_s

      t.timestamps
    end
  end
end
