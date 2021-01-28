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
    email = email_generate(coordinator)
    coordinator[:role] = 2
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
    if @coordinator.update(coordinator_params)
      render json: @coordinator
    else
      render json: @coordinator.errors, status: :unprocessable_entity
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

    def register_coordinator(id)

      coordinator = Coordinator.new({user_id: id, type_coordinator:coordinator_params[:type_coordinator], registration:coordinator_params[:registration]})
      puts coordinator, 'ok2'
      if coordinator.save
        return true
      else
        return false
      end
    end
end
