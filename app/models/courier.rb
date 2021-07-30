class Courier < ApplicationRecord
    validates :name, :email, presence: true
end
