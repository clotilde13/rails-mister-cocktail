
def AddIngredient
  btn_add_ingredient = query.Selector(".add_ingredient")
  form = query.Selector("cocktail_form")

  html = "<p>Add your ingredient</p><p><%= f.select :ingredient, @ingredients %></p><p>Add the ingredient's dose </p><p><%= f.input :dose %></p>"

  btn_add_ingredient.event.addEventListener('click', event => {
    firm.insertAdjacentHTML('beforeend', html)
  });
end

export {AddIngredient};
