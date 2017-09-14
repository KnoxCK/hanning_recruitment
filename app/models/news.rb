class News < ApplicationRecord
  mount_uploader :photo, PhotoUploader


  def formatted_date
    "#{self.date.strftime("%-d").to_i.ordinalize} #{self.date.strftime("%B %Y")}"
  end
end
