# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  is_admin   :boolean          default(FALSE), not null
#  email      :string
#  uid        :string
#  provider   :string
#  icon       :string
#  active     :boolean          default(TRUE)
#  company_id :integer          not null
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  extend FriendlyId

  friendly_id :full_name, use: :slugged
  belongs_to  :company
  enum status: %i(active inactive)

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def self.find_or_create_from_auth_hash(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      user.icon = auth.info.image
      company_name = auth.extra.raw_info.hd ? auth.extra.raw_info.hd.split('.')[0] : 'Independent Agency'
      user.company = Company.find_or_create_by(name: company_name)
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
