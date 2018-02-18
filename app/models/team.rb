# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  company_id :integer          not null
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord
  extend FriendlyId
  
  friendly_id :name, use: :slugged
  belongs_to  :company
end
