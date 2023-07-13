require_relative '../Nokogiri/crypto_scrapper'

RSpec.describe "crypto_scrapper" do
  it "returns an array of hashes with crypto name and price" do
    expected_result = [
      { "BTC" => "$5245.12" },
      { "ETH" => "$1870.79" },
      { "USDT" => "$1.00" }
    ]

    expect(crypto_scrapper).to eq(expected_result)
  end
end