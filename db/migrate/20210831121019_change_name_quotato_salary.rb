class ChangeNameQuotatoSalary < ActiveRecord::Migration[6.0]
  def change
    rename_column :missions, :quota, :salary
  end
end
