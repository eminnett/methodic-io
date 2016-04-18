# encoding: utf-8
# frozen_string_literal: true

# Encapsulates settings that describe the company and company director for the
# Methodic website.
module CompanyDetailsHelper

  def self.registered_company
    config[:registered_company]
  end

  def self.director
    config[:director]
  end

  private

  def self.config_path
    File.join(Rails.root, 'config', 'company_details.yml')
  end

  def self.config
    YAML.load_file(config_path)
  end

end
