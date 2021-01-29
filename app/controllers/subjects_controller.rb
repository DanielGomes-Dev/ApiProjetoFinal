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
    subject[:department_id] =  1

    @subject = Subject.new(subject.except(:pre_requisito))

    if @subject.save && add_requirement_to_subejct(@subject.id)

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

    def add_requirement_to_subejct(subject_id)
      requirement = subject_params[:requirement]
      return true if requirement.length == 0

      requirement.each do |subject_requirement|
        requirementCreate = Requirement.new({subject_id:subject_id, subject_requirement:subject_requirement})
        unless requirementCreate.save
          render json: {err: "Falha ao salvar Matéria Requirida"}
        end
      end

        return true
    end


    
    


    # Only allow a list of trusted parameters through.
    def subject_params
      params.require(:subject).permit(:name, :workload, :knowledge_area, pre_requisito:[])
    end
end
