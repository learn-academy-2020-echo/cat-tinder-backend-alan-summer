class Alien < ApplicationRecord
    validates :name, :distance, :planet, presence: true
end
