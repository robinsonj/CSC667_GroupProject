class Donation < ActiveRecord::Base
	belongs_to :user
	has_attached_file :photo1

	validates_attachment_content_type :photo1, :content_type =>['image/jpeg','image/png'] #makes sure attachment is an jpeg or png
end
