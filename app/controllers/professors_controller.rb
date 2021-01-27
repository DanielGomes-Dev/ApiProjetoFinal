class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :update, :destroy]

  # GET /professors
  def index
    @professors = Professor.all

    render json: @professors
  end

  # GET /professors/1
  def show
    render json: @professor
  end

  # POST /professors
  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      render json: @professor, status: :created, location: @professor
    else
      render json: @professor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professors/1
  def update
    if @professor.update(professor_params)
      render json: @professor
    else
      render json: @professor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professors/1
  def destroy
    @professor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor
      @professor = Professor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def professor_params
      params.require(:professor).permit(:user_id)
    end
end
