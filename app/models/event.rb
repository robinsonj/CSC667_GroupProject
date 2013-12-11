class Event < ActiveRecord::Base

	belongs_to :user
	has_attached_file :photo1

	validates_attachment_content_type :photo1, :content_type =>['image/jpeg','image/png'] #makes sure attachment is jpeg or png

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end
