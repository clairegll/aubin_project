class AddDaysToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :days, :text
  end
end
