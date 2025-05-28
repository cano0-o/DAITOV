class PacientesController < ApplicationController
  before_action :require_login

  def index
    @pacientes = current_tutor.pacientes.order(created_at: :desc)
  end

  def buscar
    @pacientes = current_tutor.pacientes
    if params[:busqueda].present?
      search_term = "%#{params[:busqueda]}%"
      @pacientes = @pacientes.where("nombre LIKE ? OR 
                                   paternal_last_name LIKE ? OR 
                                   maternal_last_name LIKE ? OR 
                                   id = ?", 
                                   search_term, search_term, search_term, 
                                   params[:busqueda])
    end
    render :index
  end
  
  def show
    @paciente = current_tutor.pacientes.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to pacientes_path, alert: 'Paciente no encontrado'
  end

  def require_login
    redirect_to new_session_path unless current_tutor
  end
  
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
