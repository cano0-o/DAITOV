class Therapist < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  
  # Para mantener los nombres en español en el formulario
  def self.human_attribute_name(attr, options = {})
    case attr
    when :first_name then "Nombre"
    when :last_name then "Apellido Paterno"
    when :maternal_surname then "Apellido Materno"
    when :age then "Edad"
    when :degree then "Título"
    when :session_location then "Lugar de la Sesión"
    else super
    end
  end
end
