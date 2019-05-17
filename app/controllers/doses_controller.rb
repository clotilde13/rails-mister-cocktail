class DosesController < ApplicationController
  before_action :set_dose, only: %i[delete, destroy]
  before_action :set_cocktail

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    @dose.cocktail_id = @cocktail.id
    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  def delete
    @doses = @cocktail.doses
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@cocktail.id)
  end

  private

  def dose_params
    params.require(:dose)
          .permit(:description, :cocktail_id, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
