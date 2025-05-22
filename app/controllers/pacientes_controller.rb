class PacientesController < ApplicationController
  def create
    @paciente = current_tutor.pacientes.new(paciente_params)
    if @paciente.save
      redirect_to root_path, notice: 'Paciente registrado exitosamente'
    else
      render 'welcome/index'
    end
  end

  private

  def paciente_params
    params.require(:paciente).permit(
      :nombre, :paternal_last_name, :maternal_last_name,
      :birth_date, :sexo, :nivel_discapacidad_cognitiva,
      :nivel_discapacidad_visual, :nivel_discapacidad_auditiva,
      :nivel_discapacidad_motriz_gruesa, :nivel_discapacidad_motriz_fina
    )
  end
end
