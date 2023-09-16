class Message < ApplicationRecord
    validates :user, :body, presence: true
    validates :user, length: {minimum: 3}
    validates :body, length: {maximum: 250}

end
