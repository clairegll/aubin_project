class ChangeTableColumnSalary < ActiveRecord::Migration[6.0]
  def change
     change_column :missions, :salary, :string
  end
end

