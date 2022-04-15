class AddNullFalseToUserFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :nombre, false
    change_column_null :users, :dni, false
    change_column_null :users, :type_person, false
    change_column_null :users, :fecha_emision, false
    change_column_null :users, :fecha_vencimiento, false
    change_column_null :users, :email, false
    change_column_null :users, :telefono_p, false
  end
end
