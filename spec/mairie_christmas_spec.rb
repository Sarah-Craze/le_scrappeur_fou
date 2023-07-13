require_relative '../Nokogiri/mairie_christmas.rb'

RSpec.describe "mairie_christmas" do
    it "returns an array of hashes with city name and mail of this city" do
    expected_result = [
    { "ville_1" => "email_1" },
    { "ville_2" => "email_2" }, 
]

    expect(mairie_christmas).to eq(expected_result)
end
end