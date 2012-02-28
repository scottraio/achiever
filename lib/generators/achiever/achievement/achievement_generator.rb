module Achiever
  module Generators
    class AchievementGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument :award, :type => :string

      def generate_achievement
        template "achievement.rb", "app/models/achievements/#{file_name}.rb"
      end

      private

      def file_name
        award.underscore
      end

    end
  end
end
