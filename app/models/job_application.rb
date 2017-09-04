class JobApplication < ApplicationRecord
  belongs_to :live_role, optional: true

  mount_uploader :cv, CvUploader
end
