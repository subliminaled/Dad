class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :body
      t.string :author_name
      t.string :author_location
      t.string :thumbnail_url
      t.string :image_url

      t.timestamps
    end
  end
end
