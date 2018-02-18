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
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
