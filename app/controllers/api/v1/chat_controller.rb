class Api::V1::ChatController < ApplicationController

  def send_content
    @user = User.find_by(username: chat_params[:session][:username])
    @session = Session.find_by(user: @user)
    if @session.current_user(chat_params[:session][:access_token])
      m = @user.chat_contents.build(chat_params[:message])
      if m.save!
        render json:{ user: @user.username, access_token: @session.access_token, content: m.content }, status: 201
      else
        render status: :bad_request
      end
    end
  end

  def receive_content
    @user = User.find_by(username: chat_params[:session][:username])
    @session = Session.find_by(user: @user)
    render json: @user.chat_contents.select(:id, :content, :created_at).order(created_at: :asc), status: :ok
  end

  private 
    def chat_params
      params.require(:data).permit(session: [:username, :access_token], message: [:chat, :content])
    end

end

