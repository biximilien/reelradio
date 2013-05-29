class CreateBroadcasts < ActiveRecord::Migration
  def up
    create_table :broadcasts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def down
    drop_table :broadcasts
  end
end
