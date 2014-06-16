class UsersubjectsController < ApplicationController
  def new
    @user = current_user
    @usersubject = @user.usersubjects.build
    

  end


  def create
  	@user = current_user
    @usersubject = @user.usersubjects.create(params[:subject_id])

    respond_to do |format|
      if @usersubject.save
        format.html { redirect_to root_path, notice: 'Report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usersubject }
      else
        format.html { render action: 'new' }
        format.json { render json: @usersubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @usersubject.update(usersubject_params)
        format.html { redirect_to @usersubject, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usersubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @usersubject.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersubject
      @usersubject = Usersubject.find(params[:usersubject])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usersubject_params
      params.require(:usersubject).permit(:user_id, subject_ids: [])
    end
end

