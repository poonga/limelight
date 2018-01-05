class User < ApplicationRecord
  belongs_to  :company
  has_attached_file :icon
end
