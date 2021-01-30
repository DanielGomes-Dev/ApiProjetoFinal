class CoordinatorsController < ApplicationController
  before_action :set_coordinator, only: [:show, :update, :destroy]

  # GET /coordinators
  def index
    @coordinators = Coordinator.all

    render json: @coordinators
  end

  # GET /coordinators/1
  def show
    render json: @coordinator
  end

  # POST /coordinators
  def create

    coordinator = coordinator_params
    coordinator[:role] = 3
    email = email_generate(coordinator)
    coordinator[:email] = email
    @user = User.new(coordinator.except(:registration, :type_coordinator, :address));

    if @user.save && address_register(coordinator[:address], @user.id) && register_coordinator(@user.id)
      render json: @user.coordinator, status: :created
    else
      @user.destroy
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coordinators/1
  def update
    if current_user[:type_coordinator] = 0
        if coordinator_update && address_update(user_params[:address])
          render json: User.find(current_user[:id])
        else
          
          render json: {err:"falha ao atualizar"}, status: :unprocessable_entity
        end
      else
        if coordinator_update && address_update(user_params[:address])
          render json: User.find(current_user[:id])
        else
          
          render json: {err:"falha ao atualizar"}, status: :unprocessable_entity
        end
    end
    
  end

  # DELETE /coordinators/1
  def destroy
    @coordinator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinator
      @coordinator = Coordinator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordinator_params
      params.require(:coordinator).permit(:name, :rg, :birthdate, :cpf, :type_coordinator, :registration, :password, :password_confirmation, address:{})
    end
    def coordinator_update
      return nil unless current_user.coordinator.present?
      if User.update(current_user[:id], name: user_params[:name])
        return true          
      else

        return false
        
      end   
    end

    def register_coordinator(id)

      coordinator = Coordinator.new({user_id: id, type_coordinator:coordinator_params[:type_coordinator], registration:coordinator_params[:registration]})

      if coordinator.save
        return true
      else
        return false
      end
    end
end
