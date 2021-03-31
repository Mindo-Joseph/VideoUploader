class DropVideosTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :Videos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
