class Student < ApplicationRecord
  belongs_to :user
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments
  has_many :payments, through: :enrollments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :date_of_birth, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    return nil unless date_of_birth
    ((Date.current - date_of_birth) / 365.25).floor
  end
end
