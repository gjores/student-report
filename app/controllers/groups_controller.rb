class GroupsController < ApplicationController
  def show
  	@group = params[:id]
  	@students = Student.where(:group => @group).order(last_name: :asc)
  end
end
