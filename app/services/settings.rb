#
# app/services/settings.rb
# Singleton service for reading/writing default settings yaml file (app.yml)
#
module Settings
  module_function

  # Path to config/settings.yml
  SETTINGS_PATH = Rails.root.join('config/settings.yml').to_s

  # Custom blog settings, configurable in admin_controller
  @settings ||= YAML.safe_load(File.read(SETTINGS_PATH))

  def all
    @settings
  end

  def author
    @settings['author']
  end

  def font
    @settings['admin']['font']
  end

  def typography
    @settings['admin']['typography']
  end

  def update_setting(key, value)
    @settings.set(key, value.to_s)
  end

  def save!
    File.open(SETTINGS_PATH, 'w') { |file| YAML.dump(@settings, file) }
    reload!
  end

  def reload!
    @settings = YAML.safe_load(File.read(SETTINGS_PATH))
  end
end