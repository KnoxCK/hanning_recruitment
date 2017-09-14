class News < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates_presence_of :title, :date, :body, :photo

  def formatted_date
    "#{self.date.strftime("%-d").to_i.ordinalize} #{self.date.strftime("%B %Y")}"
  end
end
