module Achiever

  ALL_ACHIEVEMENTS = []

	def achieves(award, options={})
		ALL_ACHIEVEMENTS << award

		user = options[:for]

		class_eval <<-EOF
			after_save :award_#{something.to_s}?
			
			def award_#{something.to_s}?
				achievement 		= Achievements::#{something.to_s.camelize}.new :user => self.#{user}
				achievement.model	= self 	

				if achievement.award?
					achievement.save
				end
			end
			
		EOF
	end
	
end

