class Tutor < ApplicationRecord
  has_secure_password
  has_many :pacientes
  
  # Validaciones
  validates :name, presence: true
  validates :paternal_last_name, presence: true
  validates :gender, inclusion: { in: %w[M F O], message: "%{value} no es un género válido" }
  validates :birth_date, presence: true
  validates :current_profession, presence: true
  validates :graduation_year, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 1900,
    less_than_or_equal_to: Date.today.year
  }
  validates :email, presence: true, 
                    uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  validates :password, length: { minimum: 6 }, allow_nil: true

  # Método para nombre completo
  def full_name
    [name, paternal_last_name, maternal_last_name].compact.join(' ')
  end
end
