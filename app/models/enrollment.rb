class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_many :payments, dependent: :destroy

  validates :status, inclusion: { in: %w[pending active completed cancelled] }
  validates :start_date, presence: true

  scope :active, -> { where(status: 'active') }
  scope :pending, -> { where(status: 'pending') }
end
