# == Schema Information
#
# Table name: companies
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  logo               :string
#  job_postings_count :integer          default(0), not null
#  slug               :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Company < ApplicationRecord
  extend FriendlyId

  friendly_id :name, use: :slugged
  has_many  :users
  has_many  :locations
  has_many  :teams
  has_many  :job_postings
end
