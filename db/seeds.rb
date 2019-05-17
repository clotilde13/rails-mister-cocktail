require 'open-uri'

Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_db = open(url).read
ingredients = JSON.parse(ingredient_db)

ingredients["drinks"].each { |h|  Ingredient.create(name: h["strIngredient1"]) }


Cocktail.create({
  name: "Pina Colada",
  image: "https://static.cuisineaz.com/400x320/i131486-pina-colada-au-thermomix.jpeg"
})

Cocktail.create({
  name: "Mojito",
  image: "https://www.komitid.fr/wp-content/uploads/2018/05/mojito.jpg"
})

Cocktail.create({
  name: "Long Island Iced Tea",
  image: "https://duijuz32qudrm.cloudfront.net/EN-US/English/Captain%20Morgan%20Long%20Island%20Iced%20Tea/BackgroundImage/long-island-iced-tea-824x559.jpg"
})

Cocktail.create({
  name: "Cosmopolitan",
  image: "https://28wd582ik70pn4qof1ukh902-wpengine.netdna-ssl.com/wp-content/uploads/2013/05/the-perfect-cosmopolitan.jpg"
})

Cocktail.create({
  name: "Bloody Mary",
  image: "https://giveitsomethyme.com/wp-content/uploads/2019/01/CL-Bloody-Mary-Feature1-e1546723587154.jpg"
})

Cocktail.create({
  name: "Tequila Sunrise",
  image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.southernliving.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fimage%2F2017%2F11%2Fmain%2Fchristmas-sunrise.jpg%3Fitok%3D_yTK-0oY&w=450&c=sc&poi=face&q=85"
})
