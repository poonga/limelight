class CreateStartingTables < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'

    create_table :companies, id: :uuid do |t|
      t.string      :name, null: false
      t.string      :logo
      t.integer     :job_postings_count, default: 0, null: false
      t.string      :slug, null: false, unique: true, index: true
      t.timestamps
    end

    create_table :users, id: :uuid do |t|
      t.string      :first_name, null: false
      t.string      :last_name, null: false
      t.boolean     :is_admin, default: false, null: false
      t.string      :email
      t.string      :uid
      t.string      :provider
      t.string      :icon
      t.boolean     :active, default: true
      t.belongs_to  :company, type: :uuid, index: true, null: false
      t.string      :slug, unique: true, index: true
      t.timestamps
    end

    create_table :teams, id: :uuid do |t|
      t.string      :name, null: false
      t.belongs_to  :company, type: :uuid, index: true, null: false
      t.string      :slug, unique: true, index: true
      t.timestamps
    end

    create_table :job_postings, id: :uuid do |t|
      t.string      :title, null: false
      t.string      :type
      t.string      :description
      t.decimal     :min_salary
      t.integer     :years_of_experience
      t.integer     :applicants_count, default: 0, null: false
      t.belongs_to  :team, type: :uuid, index: true, null: false
      t.belongs_to  :company, type: :uuid, index: true, null: false
      t.timestamps
    end

    create_table :applicants, id: :uuid do |t|
      t.string      :first_name, null: false
      t.string      :last_name, null: false
      t.string      :email
      t.string      :phone_number
      t.boolean     :work_authorized
      t.string      :authorization_status
      t.string      :linkedin_url
      t.string      :website_url
      t.string      :referral
      t.string      :gender
      t.string      :ethnicity
      t.string      :veteran_status
      t.string      :disability_status
      t.attachment  :resume
      t.attachment  :cover_letter
      t.belongs_to  :job_posting, type: :uuid, index: true, null: false
      t.string      :slug, unique: true, index: true
      t.timestamps
    end

    create_table :locations, id: :uuid do |t|
      t.string      :address, null: false
      t.string      :address2
      t.string      :city, null: false
      t.string      :district
      t.string      :postal_code
      t.string      :country, null: false
      t.belongs_to  :company, type: :uuid, index: true, null: false
      t.string      :slug, null: false, index: true, unique: true
      t.timestamps
    end
  end
end
