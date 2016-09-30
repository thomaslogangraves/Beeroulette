 beers = []
  styles =  brewery_db.beers.all(styleId: "2")
   styles.each do |style|
     style.each do |obj|
       beers << obj
     end
   end
   beer_info = beers.each { |style| style}
   p beer_info.last

 style_id1 = brewery_db.beers.all(styleId: "1")

 p style_id1
 binding.pry
 Will get general category name
 style_id1.first.style.category.name
 Will get category
 puts "zzzzzzzzzzzzzzzz"
 p style1sty = brewery_db.styles.find(1)

 To find list of beer subcategories
 brewery_db.styles.all.select do |style|
   p style.name if style.category.name == "British Origin Ales"
 end
 All of the Stylessssssss
 brewery_db.styles.all.map { |style| style.name }


 puts Parser.parse(1)
 beers needs name, abv, ibu, glasswareId, srmId, availableId, styleId, ids
 categories["data"].each {|hash| hash.select {|key, value| puts value if key == "name"}}
 categories["data"].each {|hash| hash.select {|key, value| puts value if key == "name"}}
 categories.data.each {|category| puts category.name}
