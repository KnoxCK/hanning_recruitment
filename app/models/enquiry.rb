class Enquiry < ApplicationRecord
  validates_presence_of :email, :body
end
