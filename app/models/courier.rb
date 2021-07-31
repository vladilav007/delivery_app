class Courier < ApplicationRecord
    has_many :packages

    validates :name, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
