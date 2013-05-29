class CreateFeedEntries < ActiveRecord::Migration
  def up
    create_table :feed_entries do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at
      t.string :guid

      t.timestamps
    end
  end

  def down
    drop_table :feed_entries
  end
end
