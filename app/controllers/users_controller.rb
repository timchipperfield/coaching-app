class UsersController < ApplicationController
  def index

  end
end

# TODO make sure you can set that field when you create and edit users. 
# When using the strong parameters feature in newer versions of Rails,
# permit reading of that parameter in the controller with .permit(:username)
