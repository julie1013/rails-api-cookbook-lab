class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  before_action :set_ingredient, only: [:show, :update, :destroy]

  def show
    render json: Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ingredient.destroy

    head :no_content
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :std_measure, :color, :toxicity)
  end

  private :set_ingredient, :ingredient_params
end
