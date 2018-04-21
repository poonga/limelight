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
#  slug                      :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class Applicant < ApplicationRecord
  extend FriendlyId

  friendly_id :full_name, use: :slugged
  belongs_to  :job_posting, counter_cache: true
  has_attached_file :resume
  has_attached_file :cover_letter
  enum status: %i(pending interview review offered declined accepted)
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, presence: true, format: { with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i, multiline: true }
  validates_attachment :resume, presence: true, content_type: { content_type:"application/pdf" }

  def full_name
    "#{first_name} #{last_name}"
  end
end
