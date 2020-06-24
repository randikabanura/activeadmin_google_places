module ActiveadminGooglePlaces
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../template', __FILE__)

      def copy_initializer_file
        copy_file 'initializer.rb', 'config/initializers/activeadmin_google_places.rb'
      end
    end
  end
end

