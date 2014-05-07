class CreateUserskills < ActiveRecord::Migration
  def change
    create_table :userskills do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :proficiency, default: 0
    end
  end
end
