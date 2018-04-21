class ApplicationRecord < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
  self.abstract_class = true
end
