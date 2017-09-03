class LiveRole < ApplicationRecord
  belongs_to :category
  validates_presence_of :title, :salary, :company, :location, :role
end
