class GroupsController < ApplicationController
  def homework
	  @users = User.all
  end
end
