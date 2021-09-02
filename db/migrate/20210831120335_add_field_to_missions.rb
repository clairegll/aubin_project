class AddFieldToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :field, :string
  end
end
