class Project < ApplicationRecord
  belongs_to :user
  has_many :project_works, dependent: :destroy
  has_many :works, through: :project_works
  has_many :project_requests
  # has_many :reviews, through: :project_request
  has_many :messages, dependent: :destroy

  validates :description, presence: true
end
