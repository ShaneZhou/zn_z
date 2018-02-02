class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, index: { unique: true }
      t.string :nickname, index: { unique: true }

      t.timestamps
    end
  end
end
