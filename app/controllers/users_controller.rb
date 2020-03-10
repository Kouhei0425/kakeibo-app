class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @total = @user.things.sum(:price)
    @things = @user.things.page(params[:page]).per(8)
    @data = {"収入" => @user.monthly_income, "支出" => @total}
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
