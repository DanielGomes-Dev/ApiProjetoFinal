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

    user[:role] = 0
    user[:email] = email_generate(user)

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
    ## 02 - Criei uma funcao "address_update" que atualiza o endereco do atual logado
    ## 03 - Chama a funcao que crio "student_update" e "address_update" caso as duas retorne true esta tudo certo
    if student_update && address_update(user_params[:address])
      ## 04 - Retorna as informações atualizada do usuario logado -> "Student" pois estou na rota de estudante 
      render json: User.find(current_user[:id])
    else
      
      render json: {err:"falha ao atualizar"}, status: :unprocessable_entity
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
        return false
        # render json: {err: 'Erro ao Cadastrar o Estudante'}
      end   
    end

    ##Cria Uma Função de Update
    def student_update
      return nil unless current_user.student.present?
      ## 00 - update recebe (id_do_usuario_atual, parametro a ser atualizado)
      ## 01 - Salva e retorna um true caso de certo e um false caso de errado
      if User.update(current_user[:id], name: user_params[:name])
        return true          
      else

        return false
        # return {err: 'Erro ao Cadastrar o Estudante'}
        
      end   
    end


    def user_params
      params.require(:student).permit(:name, :password, :password_confirmation, :registration, :cpf, :rg, :nationality, :birthdate, address:{})
  end

end
