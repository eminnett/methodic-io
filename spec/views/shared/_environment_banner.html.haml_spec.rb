# encoding: utf-8
# frozen_string_literal: true

require 'rails_helper'

describe 'shared/_environment_banner.html.haml' do
  let(:company_details) { CompanyDetailsHelper }

  it 'displays the banner for the test environment' do
    render 'shared/environment_banner', env: Rails.env
    expect(rendered).to match 'Methodic.io Test Environment'
  end

  it "doesn't display the banner for the production environment" do
    render 'shared/environment_banner',
           env: ActiveSupport::StringInquirer.new('production')
    expect(rendered).to be_empty
  end

end
