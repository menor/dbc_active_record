class CreateUserSkills < ActiveRecord::Migration
  def change
    t.integer :user_id
    t.integer :skill_id
    t.integer :rating
  end
end
