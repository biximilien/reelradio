class AddBroadcastIdToEpisodes < ActiveRecord::Migration[4.2]
  def up
    add_column :episodes, :broadcast_id, :integer
  end

  def down
    remove_column :episodes, :broadcast_id
  end
end
