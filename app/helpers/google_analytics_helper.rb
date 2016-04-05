module GoogleAnalyticsHelper

  def self.tracking_id
    config[:tracking_id]
  end

  private

  def self.config_path
    File.join(Rails.root, 'config', 'google_analytics.yml')
  end

  def self.config
    YAML.load_file(config_path)
  end

end
