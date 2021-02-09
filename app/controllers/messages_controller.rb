class MessagesController < ApplicationController
  def create
    message = current_user.messages.build(message_params)
    if message.save
      # flash[:success] = "Typed in"
      ActionCable.server.broadcast "chatroom_channel", 
                                  modified_message: message_render(message)
    end
    redirect_to root_path
  end

  private
  def message_params
    params.require(:message).permit(:text)
  end

  def message_render(message)
    render(partial: "message", locals: {message: message} )
  end
end
