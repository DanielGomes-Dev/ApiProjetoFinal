class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :update, :destroy]

  # GET /grades

  def index

    @grades = Grade.all

    render json: @grades
  end

  # GET /grades/1
  def show
    render json: @grade
  end

  # POST /grades
  def create

    grade = grade_params
    grade[:professor_id] = current_user.professor.id
    @grade = Grade.new()

    if @grade.save
      render json: @grade, status: :created, location: @grade
    else
      render json: @grade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grades/1
  def update
    if @grade.update(grade_params)
      render json: @grade
    else
      render json: @grade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grades/1
  def destroy
    @grade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:grade, :student_id, :subject_id, :professor_id, :classroom_id)
    end
end
