class Api::V1::SessionController < ApplicationController

  def create
    @user = User.find_by(username: user_params[:user][:username])
    @session = Session.find_by(user: @user)
    if not @session and @user.password == user_params[:user][:password]
      @session = Session.create(user: @user)
      render json: {
        data: {
          username: @user.username,
          access_token: @session.generate_access_token
        },
        message: "Login realizado com sucesso!"
      }, status: 201
    else
      render json: {
        data: {
          username: @user.username
        },
        message: "Não foi possível iniciar a sessão"
      }, status: 401
    end
  end

  def destroy
    @user = User.find_by(username: user_params[:user][:username])
    @session = Session.find_by(user: @user)
    if @session and @session.access_token == user_params[:session][:access_token]
      @session.delete
      render json: {
        message: "Usuário desconectado."
      }, status: 201
    else
      render json: {
        message: "Não foi possível desconectar."
      }, status: 400
    end
  end

  private
    def user_params
      params.require(:data).permit(user: [ :username, :password ], session: [ :access_token ])
    end
  
end
