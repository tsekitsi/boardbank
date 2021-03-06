class Skill < ActiveRecord::Base
  attr_accessible :name

  has_many :user_skills
  has_many :users, through: :user_skills
end
