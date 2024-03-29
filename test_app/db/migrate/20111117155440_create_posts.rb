class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.integer :year
      t.string :kind

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
