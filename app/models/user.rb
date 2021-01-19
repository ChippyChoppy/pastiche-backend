class User < ApplicationRecord
    has_many :users_mocktails, dependent: :destroy
    has_many :mocktails, through: :users_mocktails
    
    has_many :notes, dependent: :destroy
end
