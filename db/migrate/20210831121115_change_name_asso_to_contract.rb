class ChangeNameAssoToContract < ActiveRecord::Migration[6.0]
  def change
    rename_column :missions, :asso, :contract
  end
end
