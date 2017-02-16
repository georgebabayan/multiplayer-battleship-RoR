class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message][:text], user: current_user, conversation: params[:game])

    if @message.save
      redirect_to "/games/1"
    end
  end
end
