class AddReferenceToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :reference, :string
  end
end
