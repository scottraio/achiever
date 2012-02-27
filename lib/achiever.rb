require "achiever/achievement"
require "achiever/achiever"

if defined?(ActiveRecord::Base)
	ActiveRecord::Base.extend Achiever
end
