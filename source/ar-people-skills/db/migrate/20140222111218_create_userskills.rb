class CreateUserSkills < ActiveRecord::Migration
  def change
    t.belongs_to :user_id
    t.belongs_to :skill_id
    t.integer :rating
  end
end
