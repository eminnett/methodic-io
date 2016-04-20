# encoding: utf-8
# frozen_string_literal: true

# Encapsulates settings that describe the company and company director for the
# Methodic website.
module CompanyDetailsHelper
  class << self
    def registered_company
      config[:registered_company]
    end

    def director
      config[:director]
    end

    private

    def config_path
      File.join(Rails.root, 'config', 'company_details.yml')
    end

    def config
      YAML.load_file(config_path)
    end
  end
end
