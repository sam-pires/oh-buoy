class Buoy < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
  has_many :photos

  validates :title, presence: true
  validates :age, presence: true
  validates :category, presence: true, inclusion: { in: ["Food", "Animal", "Unicorn", "Cartoon", "Classic", "Weird"] }
  validates :capacity, presence: true
  validates :price_per_day, numericality: true, presence: true
end

# Test
# Buoy.new(title: "Test title", age: 19, category: "Food", capacity: 3, price_per_day: 10.1)
