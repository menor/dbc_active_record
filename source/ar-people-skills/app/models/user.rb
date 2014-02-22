class User < ActiveRecord::Base
  has_many :userskills
  has_many :skills, through: :userskills
end

def proficiency_for(skill)
  self.skill.proficiency
end