class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :userskills
  has_many :users, through: :userskills

  def user_with_proficiency(value)
    
  end
end
