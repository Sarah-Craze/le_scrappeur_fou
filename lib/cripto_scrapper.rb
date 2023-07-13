require 'nokogiri'
require 'open-uri'

def crypto_scrapper
  crypto_name = []
  crypto_price = []

  doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))


  doc.xpath('/html/body/div[1]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').each do |link|
   crypto_name << link.content
  end

  doc.xpath('/html/body/div[1]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div').each do |link|
  crypto_price << link.content
  end

  array = crypto_name.zip(crypto_price).map { |name, price| { name => price } }
  puts array
end
crypto_scrapper