require "rails_helper"

describe "shared/_footer.html.haml" do
  it "displays the copyright" do
    render
    expect(rendered).to match "Copyright &copy; #{Time.now.year} Methodic Limited"
  end

  it "states 'All rights reserved'" do
    render
    expect(rendered).to match "All rights reserved"
  end

  it "indicates where the business is registered" do
    render
    expect(rendered).to match "Methodic Limited is a company registered in England and Wales"
  end

  it "includes the company registration number" do
    render
    expect(rendered).to match "9402598"
  end

  it "includes the company VAT number" do
    render
    expect(rendered).to match "205 7155 29"
  end
end
