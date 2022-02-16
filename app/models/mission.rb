class Mission < ApplicationRecord
  belongs_to :user
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  has_rich_text :description
  has_rich_text :summary
  has_rich_text :profil

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  # has_one_attached :photo
  # validates :done, default: false
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
