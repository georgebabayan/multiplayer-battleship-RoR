class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @game = current_user.games.last
    @message = Message.new(text: params[:message][:text], user: current_user, conversation: @game.conversation)

    if @message.save
      redirect_to "/games/1"
    end
  end
end
