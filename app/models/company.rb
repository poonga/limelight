class Company < ApplicationRecord
  has_many  :users
  has_many  :locations
  has_many  :teams
  has_many  :job_postings
end
