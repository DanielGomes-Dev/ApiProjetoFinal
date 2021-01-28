class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  # GET /students
  def index
    @students = Student.all

    render json: @students
  end

  # GET /students/1
  def show

    # student = Student.find(1)
    render json: @student
    # render json: student

  end

  # POST /students

  def create
    user = user_params
    email = email_generate(user)

    user[:role] = 0
    user[:email] = email

    @user = User.new(user.except(:address, :registration))
    
    if @user.save && address_register(user[:address], @user.id) && student_registrate(@user);
            render json: @user.student, status: :created

    else
      @user.destroy
      render json: @user.errors, status: :unprocessable_entity

    end
        
  end

  # # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:user_id)
    end

    def student_registrate (user)

      # user.registration = "#{School_year.last.year}#{Course.find(1)}#{rand(01...99)}"
      student = Student.new({user_id:user.id, course_id:1, registration:user_params[:registration]});

      if student.save
        return true          
      else
        # render json: student.errors
        return false
      end
      
    end

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :registration, :cpf, :rg, :nationality, :birthdate, address:{})
  end

end
