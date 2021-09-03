class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: { user: user }, include: [users_tasks: {include: [:tag]}]
  end
end
