class MessagesController < ApplicationController
    def index
        @messages = Message.order(:user)
    end

end
