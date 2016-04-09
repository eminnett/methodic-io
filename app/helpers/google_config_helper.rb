module GoogleConfigHelper

  def self.analytics_tracking_id
    config[:analytics_tracking_id]
  end

  private

  def self.config_path
    File.join(Rails.root, 'config', 'google_config.yml')
  end

  def self.config
    YAML.load_file(config_path)
  end

end
