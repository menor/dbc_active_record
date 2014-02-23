class User < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :userskills
  has_many :skills, through: :userskills

  def proficiency_for(skill_we_want)
    self.userskills.find_by_skill_id(skill_we_want.id).proficiency
  end

  def set_proficiency_for(skill_we_want, new_proficiency)
    self.userskills.find_by_skill_id(skill_we_want.id).update_attributes( proficiency: new_proficiency)
  end

end