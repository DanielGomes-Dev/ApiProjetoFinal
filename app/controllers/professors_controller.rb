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
    user = user_params

    user[:email] = email_generate(user)
    user[:role] = 1

    @user = User.new(user.except(:address, :registration));

     if @user.save && address_register(user[:address], @user.id)  && professor_registrate(@user);
            render json: @user.professor, status: :created

    else
      @user.destroy
      render json: @user.errors, status: :unprocessable_entity

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

    def professor_registrate (user)
      puts user_params[:registration], "Registration"
      professor = Professor.new({user_id:user.id, registration: user_params[:registration] });

      if professor.save
        return true          
      else
        return false
      end
      
    end
    def user_params
      params.require(:professor).permit(:name, :password, :password_confirmation, :registration, :cpf, :rg, :nationality, :birthdate, address:{})
    end
end
