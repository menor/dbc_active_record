class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :userskills
  has_many :users, through: :userskills
end
