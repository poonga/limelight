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

require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
