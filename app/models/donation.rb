class Donation < ActiveRecord::Base
	has_attached_file :photo1

	validates_attachment_content_type :photo1, :content_type =>['image/jpeg','image/png'] #makes sure attachment is an jpeg or png
end
