# encoding: utf-8
# frozen_string_literal: true

module GoogleConfigHelper

  def self.analytics_tracking_id
    config[:analytics_tracking_id]
  end

  def self.site_verification_code
    config[:site_verification_code]
  end

  private

  def self.config_path
    File.join(Rails.root, 'config', 'google_config.yml')
  end

  def self.config
    YAML.load_file(config_path)
  end

end
