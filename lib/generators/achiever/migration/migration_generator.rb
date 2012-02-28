module Achiever
  module Generators
    class MigrationGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_migration
        copy_file "migration.rb", "db/migrate/create_achiever_table.rb"
      end

    end
  end
end
