module Achiever

  ALL_ACHIEVEMENTS = []

	def achieves(award, options={})
		ALL_ACHIEVEMENTS << award

		user = options[:for]

		class_eval <<-EOF
			after_save :award_#{award.to_s}?
			
			def award_#{award.to_s}?
				achievement 		= Achievements::#{award.to_s.camelize}.new :user => self.#{user}
				achievement.model	= self 	

				if achievement.award?
					achievement.save
				end
			end
			
		EOF
	end
	
end

