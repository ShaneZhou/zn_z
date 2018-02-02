class CreateBlogSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_settings do |t|
      t.references :user, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
