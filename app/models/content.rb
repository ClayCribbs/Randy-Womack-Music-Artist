class Content < ApplicationRecord
	has_one :style_profile
	mount_uploaders :pictures, PicturesUploader
	serialize :pictures, Array
end
