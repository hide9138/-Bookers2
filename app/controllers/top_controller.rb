class TopController < ApplicationController

  def index
   if user_signed_in?
   redirect_to users_home_path(current_user.id)
   end
  end

  def about
  end
end
