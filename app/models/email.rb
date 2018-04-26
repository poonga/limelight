class Email
  include ActiveModel::Model
  attr_accessor :body, :subject
  validates :body, :subject, presence: true
end
