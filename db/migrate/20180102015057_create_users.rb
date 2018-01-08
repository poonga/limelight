class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string "first_name", null: false
      t.string "last_name", null: false
      t.boolean "is_admin", default: false, null: false
      t.string "email"
      t.string "uid"
      t.string "provider"
      t.string "icon"
      t.boolean "active", default: true
      t.integer "company_id"
      t.timestamps
    end
  end
end
