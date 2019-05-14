class UsersController < ApplicationController

  def show
    render locals: {
      facade: UserFacade.new(params[:q])
    }
  end
end
