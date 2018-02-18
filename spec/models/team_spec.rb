# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  company_id :integer          not null
#  slug       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Team, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
