class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose = Dose.new()
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose = Dose.new(cocktail: @cocktail, ingredient: @ingredient, description: params[:dose][:description] )
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:content, :ingredient)
  end
end
