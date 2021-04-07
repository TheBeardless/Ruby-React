class Snack < ApplicationRecord
  #these validations are triggered currently by 'snack.save'
  validates :name, presence: true, length: { minimum:1, too_short: "%{count} characters is the minimum allowed" }
  validates :description, presence: true, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed"}
  validates :rating, presence: true, inclusion: {in: 1..10, message: "%{value} isn't within 1 and 10"}
end
