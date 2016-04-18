# encoding: utf-8
# frozen_string_literal: true

require 'rails_helper'

describe 'shared/_footer.html.haml' do
  let(:company_details) { CompanyDetailsHelper }

  it 'displays the copyright' do
    render
    expected_text = "Copyright &copy; #{Time.current.year} " +
                    company_details.registered_company[:name]
    expect(rendered).to match expected_text
  end

  it "states 'All rights reserved'" do
    render
    expect(rendered).to match 'All rights reserved'
  end

  it 'indicates where the business is registered' do
    render
    name          = company_details.registered_company[:name]
    location      = company_details.registered_company[:location]
    expected_text = "#{name} is a company registered in #{location}"
    expect(rendered).to match expected_text
  end

  it 'includes the company registration number' do
    render
    expect(rendered).to match company_details.registered_company[:number].to_s
  end

  it 'includes the company VAT number' do
    render
    vat_details = company_details.registered_company[:vat_registration]
    expect(rendered).to match vat_details
  end

  it "includes the director's name" do
    render
    expect(rendered).to match company_details.director[:name]
  end

  it "includes the director's title" do
    render
    expect(rendered).to match company_details.director[:title]
  end

  it "includes the director's email" do
    render
    expect(rendered).to match company_details.director[:email]
  end
end
