class AddImageUrlToNews < ActiveRecord::Migration
  def up
    add_column :news, :image_url, :string
  end

  def down
    remove_column :news, :image_url
  end
end
