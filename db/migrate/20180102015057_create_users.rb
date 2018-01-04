class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string "first_name", null: false
      t.string "last_name", null: false
      t.string "username", null: false
      t.boolean "is_admin", default: false, null: false
      t.string "email"
      t.attachment "icon"
      t.timestamps
    end
  end
end
