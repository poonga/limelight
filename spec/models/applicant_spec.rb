# == Schema Information
#
# Table name: applicants
#
#  id                        :integer          not null, primary key
#  first_name                :string           not null
#  last_name                 :string           not null
#  email                     :string
#  phone_number              :string
#  work_authorized           :boolean
#  authorization_status      :string
#  linkedin_url              :string
#  website_url               :string
#  referral                  :string
#  gender                    :string
#  ethnicity                 :string
#  veteran_status            :string
#  disability_status         :string
#  resume_file_name          :string
#  resume_content_type       :string
#  resume_file_size          :integer
#  resume_updated_at         :datetime
#  cover_letter_file_name    :string
#  cover_letter_content_type :string
#  cover_letter_file_size    :integer
#  cover_letter_updated_at   :datetime
#  job_posting_id            :integer          not null
#  slug                      :string           not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

require 'rails_helper'

RSpec.describe Applicant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
