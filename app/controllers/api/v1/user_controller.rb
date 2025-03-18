class Api::V1::UserController < ApplicationController

  def create
    if not user_params.key? "user"
      print(1)
      render json: { 
        data: {  }, 
        message: "Parâmetros incorretos" 
      }, status: 400
    else
      @user = User.new user_params[:user]
      if @user.save
        render json: { 
          data: { username: @user.username }, 
          message: "Usuário cadastrado com sucesso. Pode iniciar uma nova sessão" 
        }, status: 201
      else
        render json: { 
          data: {  }, 
          message: "Erro ao criar o usuário." 
        }, status: 400
      end
    end
  end

  def update
    @user = User.find_by(username: user_params[:user][:username])
    @session = Session.find_by(user: @user)
  end

  def destroy
  end

  private
    def user_params
      params.require(:data).permit(user: [ :username, :password ], session: [ :access_token ])
    end

end
