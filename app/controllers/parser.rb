module Parser
  def self.brewery_db
    brewery = BreweryDB::Client.new do |config|
      config.api_key = "90e0fc85a2f2ced0c36502a13361d981"
    end
    return brewery
  end
  def self.categories
    categories = self.brewery_db.styles.all.map { |style| style.category.name}.uniq
  end

  def self.subcategories(category)
    self.brewery_db.styles.all.select do |style|
      style.name if style.category.name == category
    end
  end
end
