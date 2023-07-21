class PagesController < ApplicationController
  def index
    # Only superadmins can create new users, so we load the user here for the check
    @user = current_user if user_signed_in?
  end
end
