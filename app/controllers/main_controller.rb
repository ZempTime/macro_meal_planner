class MainController < ApplicationController

  before_action :authenticate_user!, except: [:landing]
  before_action :set_macro_requirements, only: [:home, :update_macros]


  def landing
  end

  def home
  end

  def edibles
  end

  def meals
  end

  def update_macros
    if @macro_requirements.update macro_requirements_params
      redirect_to user_home_path(current_user), notice: "Macros are current!"
    else
      redirect_to user_home_path(current_user), notice: "aw snap! something went wrong"
    end
  end
  
  private

  def set_macro_requirements
    @macro_requirements = current_user.macro_requirements.first
  end

  def macro_requirements_params
    params.require(:macro_requirement).permit(:carbs, :protein, :fat, :fiber, :total_calories)
  end

end
