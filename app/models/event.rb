class Event < ActiveRecord::Base

	belongs_to :user
	has_attached_file :photo1

	validates_attachment_content_type :photo1, :content_type =>['image/jpeg','image/png'] #makes sure attachment is jpeg or png

	def self.search(search)
		if search
			all(:conditions => ['title LIKE ? OR message LIKE ? OR name LIKE ? OR address LIKE ? OR contact_number LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
		else
			find(:all)
		end
	end
end
