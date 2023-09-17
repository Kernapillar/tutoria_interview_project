class MessagesController < ApplicationController
    def index
        @message = Message.order(:user)
    end

end
