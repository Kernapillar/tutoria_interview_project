class MessagesController < ApplicationController
    def index
        @messages = Message.order(:user)
        @message = Message.new
    end


    def create
        @message = Message.new(message_params);
        if @message.save
            redirect_to messages_path, notice: "Message successful"
        end
    end

    private

    def message_params 
        params.require(:message).permit(:user, :body)
    end


end
