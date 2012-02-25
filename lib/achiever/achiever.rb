require "active_record"

ALL_ACHIEVEMENTS = []

module Achiever

	def achieves(something, conds)
		ALL_ACHIEVEMENTS << something

		user = conds[:for]

		class_eval <<-EOV
			after_save :award_#{something.to_s}?

			class << self
				def award_#{something.to_s}?
					achievement 		= #{something.to_s.camelize}Achievement.new :user => self.send(user)
					achievement.obj		= self 	

					achievement.awarded if achievement.award?
				end
			end
		EOV
	end
	
end

