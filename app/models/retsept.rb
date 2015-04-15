class Retsept < ActiveRecord::Base
	belongs_to :user
	has_many :vittuilus
	mount_uploader :kuva, KuvaUploader
end
