class AddSummaryToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :summary, :text
  end
end
