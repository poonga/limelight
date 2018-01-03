class JobPosting < ApplicationRecord
  belongs_to  :company
  has_many    :applicants
end
