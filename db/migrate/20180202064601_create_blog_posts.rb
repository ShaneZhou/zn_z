class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title, index: true, null: false
      t.text :body
      t.references :blog_setting, foreign_key: true, null: false

      t.timestamps
    end
  end
end
