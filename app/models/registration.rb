class Registration < ApplicationRecord
  validates_presence_of :cv
  mount_uploader :cv, CvUploader
end
