class Quest < ActiveRecord::Base
  belongs_to :quest
  belongs_to :user
  has_many :quests
  validates :name, presence: true
end
