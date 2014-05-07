class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :userskills
  has_many :users, through: :userskills

  def user_with_proficiency(value)
    user_id_proficiency = self.userskills.find_by_proficiency(value).user_id
    self.users.find(user_id_proficiency)
  end
end
