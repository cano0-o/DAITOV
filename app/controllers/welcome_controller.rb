class WelcomeController < ApplicationController
  def index
    @paciente = Paciente.new
    @pacientes = current_tutor.pacientes if current_tutor
  end
end
