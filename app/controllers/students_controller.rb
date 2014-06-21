class StudentsController < ApplicationController
before_action :authenticate_user!
  def index
	 respond_to do |format|
	    format.html
	    format.json { render json: StudentDatatable.new(view_context) }
	  end
  end

  def show
  end
end
