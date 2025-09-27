class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments

  validates :name, presence: true
  validates :description, presence: true
  validates :fee, presence: true, numericality: { greater_than: 0 }
  validates :genre, presence: true
  validates :instrument, presence: true

  scope :active, -> { where(active: true) }
  scope :by_genre, ->(genre) { where(genre: genre) }
  scope :by_instrument, ->(instrument) { where(instrument: instrument) }
end
