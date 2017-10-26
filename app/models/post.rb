class Post < ApplicationRecord
	mount_uploader :cover, CoverUploader
end
