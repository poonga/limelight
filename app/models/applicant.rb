class Applicant < ApplicationRecord
  belongs_to  :job_posting
  has_attached_file :resume
  has_attached_file :cover_letter
end
