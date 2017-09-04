class JobApplication < ApplicationRecord
  belongs_to :live_role

  mount_uploader :cv, CvUploader
end
