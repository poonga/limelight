# == Schema Information
#
# Table name: job_postings
#
#  id                  :integer          not null, primary key
#  title               :string           not null
#  type                :string
#  description         :string
#  min_salary          :decimal(, )
#  years_of_experience :integer
#  team_id             :integer
#  applicants_count    :integer          default(0), not null
#  company_id          :integer          not null
#  slug                :string           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe JobPosting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
