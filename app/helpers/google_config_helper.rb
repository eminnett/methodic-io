# encoding: utf-8
# frozen_string_literal: true

# Encapsulates configuration settings for Google service integrations.
# - Google Analytics
# - Google Search Console
module GoogleConfigHelper
  class << self
    def analytics_tracking_id
      config[:analytics_tracking_id]
    end

    def site_verification_code
      config[:site_verification_code]
    end

    private

    def config_path
      File.join(Rails.root, 'config', 'google_config.yml')
    end

    def config
      YAML.load_file(config_path)
    end
  end
end
