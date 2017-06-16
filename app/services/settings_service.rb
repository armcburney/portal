#
# settings_service.rb
#
module Portal
  #
  # Singleton service for reading/writing default settings yaml file (app.yml)
  #
  class SettingsService
    include 'singleton'

    def initalize
      @yaml_file = YAML.load_file '../../config/app.yml'
    end

    def update_yaml_values(key_value_pairs)
      key_value_pairs.each { |key, value| @yaml_file[key] = value }
    end

    def write_yaml_values
      File.open('../../config/app.yml', 'w') { |f| YAML.dump(@yaml_file, f) }
    end
  end
end
