class Paciente < ApplicationRecord
  belongs_to :tutor
  def nombre_completo
    "#{nombre} #{paternal_last_name} #{maternal_last_name}".strip
  end
end
