class User < ApplicationRecord
  belongs_to  :company

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
      user.save!
    end
  end
end
