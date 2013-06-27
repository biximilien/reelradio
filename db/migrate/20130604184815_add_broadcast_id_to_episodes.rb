class AddBroadcastIdToEpisodes < ActiveRecord::Migration
  def up
    add_column :episodes, :broadcast_id, :integer
  end

  def down
    remove_column :episodes, :broadcast_id
  end
end
