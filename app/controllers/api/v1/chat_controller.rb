class Api::V1::ChatController < ApplicationController
  def send
    @session = Session.find_by username: chat_params[:session][:username]
    if @session.current_user chat_params[:session][:access_token]
      Message.add_message chat_params[:message][:chat], @session.username, chat_params[:message][:content]
      render json: {  }
    end
  end

  def receive
  end

  private 
    def chat_params
      params.require(:data).permit(session: [:username, :access_token], message: [:chat, :content])
    end
end
