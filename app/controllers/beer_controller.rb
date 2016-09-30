get '/beers' do
  @categories = Parser.categories
  erb :'beers/index'
end

get '/beers/:category' do
  @category = params[:category]
  @subcategories = Parser.subcategories(@category)
end
