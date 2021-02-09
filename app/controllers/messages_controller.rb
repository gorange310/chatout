class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "Typed in"
    end
    redirect_to root_path

  end

  private
  def message_params
    params.require(:message).permit(:text)
  end
end
