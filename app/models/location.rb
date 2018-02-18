# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  address     :string           not null
#  address2    :string
#  city        :string           not null
#  district    :string
#  postal_code :string
#  country     :string           not null
#  company_id  :integer          not null
#  slug        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Location < ApplicationRecord
  extend FriendlyId
  
  friendly_id :city, use: :slugged
  belongs_to  :company
end
