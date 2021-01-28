class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :update, :destroy]

  # GET /subjects
  def index
    @subjects = Subject.all

    render json: @subjects
  end

  # GET /subjects/1
  def show
    render json: @subject
  end

  # POST /subjects
  def create
    subject = subject_params
    #current user department
    subject[:department_id] = 1 
    @subject = Subject.new(subject.except(:pre_requisito))

    if @subject.save && add_requirement_to_subejct

      render json: @subject, status: :created, location: @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subjects/1
  def update
    if @subject.update(subject_params)
      render json: @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subjects/1
  def destroy
    @subject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    def add_requirement_to_subejct
      return true 
    end


    
    


    # Only allow a list of trusted parameters through.
    def subject_params
      params.require(:subject).permit(:name, :workload, :knowledge_area, :school_year_id, :pre_requisito)
    end
end
