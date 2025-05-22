class WelcomeController < ApplicationController
  def index
    @paciente = Paciente.new
  end
end
