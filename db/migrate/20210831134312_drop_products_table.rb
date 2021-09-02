class DropProductsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :pg_search_documents
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

