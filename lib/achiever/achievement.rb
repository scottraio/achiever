class Achievement < ActiveRecord::Base

	belongs_to :user

	validates :type, :uniqueness => {:scope => :user_id}

end
