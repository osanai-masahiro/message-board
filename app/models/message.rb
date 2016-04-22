class Message < ActiveRecord::Base
    validates :name, length: {maximum: 20}, presence: true
    validates :body, length: {minimum: 2, maximum: 30} , presence: true ,uniqueness: true
    validates :age, length: {maximum:2} , presence: true ,
    numericality: { only_integer: true , greater_than: -1}
end
