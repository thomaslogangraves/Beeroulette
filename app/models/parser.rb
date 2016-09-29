module Parser
require 'uri'
require 'net/http'
require 'json'
require 'pry'

  def self.parse(input)
    url = 'http://api.brewerydb.com/v2/beers'
    uri = URI.parse(url)

    params = {
      "name" => "Stout",
      "randomCount" => input,
      "key" => "90e0fc85a2f2ced0c36502a13361d981"
    }
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get(uri)
    # binding.pry
    JSON.parse(response)
  end
end

categories = Parser.parse(1)
# beers needs name, abv, ibu, glasswareId, srmId, availableId, styleId, ids
# categories["data"].each {|hash| hash.select {|key, value| puts value if key == "name"}}
categories["data"].each {|hash| hash.select {|key, value| puts value if key == "name"}}
# categories.data.each {|category| puts category.name}
