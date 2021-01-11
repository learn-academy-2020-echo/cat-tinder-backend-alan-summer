class Alien < ApplicationRecord
    validates :name, presence: true
    validates :distance, presence: true
    validates :planet, presence: true
end
