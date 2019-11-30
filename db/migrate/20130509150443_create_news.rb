class CreateNews < ActiveRecord::Migration[4.2]
  def up
    create_table :news do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def down
    drop_table :news
  end
end
