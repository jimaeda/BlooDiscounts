class UserController < ApplicationController
  before_action :authenticate_user!

  def profile
  end

  def points
  end

end
