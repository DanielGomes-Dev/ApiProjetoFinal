class RelationCourseAndSubjectsController < ApplicationController
  before_action :set_relation_course_and_subject, only: [:show, :update, :destroy]

  # GET /relation_course_and_subjects
  def index
    @relation_course_and_subjects = RelationCourseAndSubject.all

    render json: @relation_course_and_subjects
  end

  # GET /relation_course_and_subjects/1
  def show
    render json: @relation_course_and_subject
  end

  # POST /relation_course_and_subjects
  def create
    @relation_course_and_subject = RelationCourseAndSubject.new(relation_course_and_subject_params)

    if @relation_course_and_subject.save
      render json: @relation_course_and_subject, status: :created, location: @relation_course_and_subject
    else
      render json: @relation_course_and_subject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /relation_course_and_subjects/1
  def update
    if @relation_course_and_subject.update(relation_course_and_subject_params)
      render json: @relation_course_and_subject
    else
      render json: @relation_course_and_subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /relation_course_and_subjects/1
  def destroy
    @relation_course_and_subject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relation_course_and_subject
      @relation_course_and_subject = RelationCourseAndSubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relation_course_and_subject_params
      params.fetch(:relation_course_and_subject, {})
    end
end
