# == Schema Information
#
# Table name: companies
#
#  id                                                              :integer          not null, primary key
#  name                                                            :string           not null
#  created_at                                                      :datetime         not null
#  updated_at                                                      :datetime         not null
#  logo                                                            :string
#  #<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition :string
#

class Company < ApplicationRecord
  has_many  :users
  has_many  :locations
  has_many  :teams
  has_many  :job_postings
end
