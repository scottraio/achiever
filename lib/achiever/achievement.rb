class Achievement < ActiveRecord::Base

	belongs_to :user

	validates :type, :uniqueness => {:scope => :user_id}

	after_save :awarded

	attr_accessor :model

end
