class SubjectsController < ApplicationController
  def index
  @subjects = Subject.order(:name)
	  respond_to do |format|
	    format.html
	    format.json { render json: @subjects.where("name like ?", "%#{params[:q]}%")}
	  end
  end

  def show
  end
end
