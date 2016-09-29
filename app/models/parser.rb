module Parser
require 'uri'
require 'net/http'
require 'json'
require 'pry'

  def self.parse(input)
    url = 'http://api.brewerydb.com/v2/beers'
    uri = URI.parse(url)

    params = {
      "styleId" => input,
      "key" => "90e0fc85a2f2ced0c36502a13361d981"
    }
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get(uri)
    binding.pry
     puts JSON.parse(response)
  end
end

Parser.parse(15)
