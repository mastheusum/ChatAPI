class Api::V1::ChatController < ApplicationController

  def send_content
    @user = User.find_by(username: chat_params[:session][:username])
    @session = Session.find_by(user: @user)
    if @session.current_user(chat_params[:session][:access_token])
      m = @user.chat_contents.build(chat_params[:message])
      if m.save!
        render json:{ user: @user.username, access_token: @session.access_token, chat: m.chat ,content: m.content }, status: :ok
      else
        render json:{ error: "Parâmetros incorretos" }, status: :bad_request
      end
    else
      render json:{ error: "Dados incorretos" }, status: :unauthorized
    end
  end

  def receive_content
    @user = User.find_by(username: chat_params[:session][:username])
    @session = Session.find_by(user: @user)
    if @session and chat_params[:message].key? "chat"
      if @session.current_user chat_params[:session][:access_token]
        @messages = ChatContent.all.where(chat: chat_params[:message][:chat])
        render json: @messages, status: :ok
      else
        render json: { error: "Parâmetros incorretos" }, status: :unauthorized
      end
    else
      render json: { error: "Parâmetros incorretos" }, status: :bad_request
    end
  end

  def channels_list
    @user = User.find_by(username: chat_params[:session][:username])
    @session = Session.find_by(user: @user)
    if @session.current_user chat_params[:session][:access_token]
      @chats = ChatContent.all.select(:chat).distinct
      render json: @chats, status: :ok
    else
      render json: { error: "Parâmetros incorretos" }, status: :unauthorized
    end
  end

  private 
    def chat_params
      params.require(:data).permit(session: [:username, :access_token], message: [:chat, :content])
    end

end

