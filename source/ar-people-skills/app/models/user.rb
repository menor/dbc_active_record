class User < ActiveRecord::Base
  has_many :userskills
  has_many :skills, through: :userskills

  def proficiency_for(skill)
    id = self.skills.find_by_name(skill).id
    Userskill.find(user_id = self.id, skill_id = id).first.proficiency
  end
end