require "active_record"


module Achiever

  ALL_ACHIEVEMENTS = []

	def achieves(object, options={})
		ALL_ACHIEVEMENTS << object

		user = options[:for]

		class_eval <<-EOV
			after_save :award_#{object.to_s}?

			class << self
				def award_#{object.to_s}?
					achievement 		= #{object.to_s.camelize}Achievement.new :user => self.send(user)
					achievement.obj		= self	

					achievement.awarded if achievement.award?
				end
			end
		EOV
	end
	
end

