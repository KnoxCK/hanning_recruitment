class JobApplication < ApplicationRecord
  belongs_to :live_role
  validates_presence_of :cv
  mount_uploader :cv, CvUploader
end
