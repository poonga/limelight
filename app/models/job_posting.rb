# == Schema Information
#
# Table name: job_postings
#
#  id                  :uuid             not null, primary key
#  uuid                :uuid
#  title               :string           not null
#  type                :string
#  description         :string
#  min_salary          :decimal(, )
#  years_of_experience :integer
#  applicants_count    :integer          default(0), not null
#  team_id             :integer          not null
#  company_id          :uuid             not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class JobPosting < ApplicationRecord
  belongs_to  :company, counter_cache: true
  belongs_to  :team
  has_many    :applicants
  enum        employment_type: %i(full_time part_time contractor internship)

  validates   :title, presence: true
  validates   :min_salary, numericality: true
  validates   :years_of_experience, numericality: { only_integer: true }, presence: true
end
