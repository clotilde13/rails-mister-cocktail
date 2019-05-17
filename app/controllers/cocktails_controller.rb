class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = Dose.where(cocktail_id: @cocktail.id.to_s)
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.doses.build
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all.map { |i| i.name }
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit; end

  def update
    @cocktail = Cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail)
          .permit(:name, :image)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
