class DosesController < ApplicationController
  before_action :set_cocktail
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
