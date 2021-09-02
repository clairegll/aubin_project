class AddProfilToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :profil, :text
  end
end
