class CreateStartingTables < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string "name", null: false
      t.integer "company_id", null: false
      t.timestamps
    end
    create_table :job_postings do |t|
      t.string "title", null: false
      t.string "type"
      t.string "description"
      t.decimal "min_salary"
      t.integer "years_of_experience"
      t.integer "team_id"
      t.integer "company_id", null: false
      t.timestamps
    end
    create_table :applicants do |t|
      t.string "first_name", null: false
      t.string "last_name", null: false
      t.string "email"
      t.string "phone_number"
      t.boolean "work_authorized"
      t.string "authorization_status"
      t.string "linkedin_url"
      t.string "website_url"
      t.string "gender"
      t.string "ethnicity"
      t.string "veteran_status"
      t.string "disability_status"
      t.integer "job_posting_id", null: false
      t.timestamps
    create_table :locations do |t|
      t.string "address", null: false
      t.string "address2"
      t.string "city", null: false
      t.string "district"
      t.string "postal_code"
      t.string "country", null: false
      t.integer "company_id", null: false
      t.timestamps
    end
    end
  end
end
