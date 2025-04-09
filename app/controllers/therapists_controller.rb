class TherapistsController < ApplicationController
  def new
    @therapist = Therapist.new
  end

  def create
    @therapist = Therapist.new(therapist_params)
    
    if @therapist.save
      redirect_to new_session_path, notice: '¡Registro exitoso! Por favor inicia sesión.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def therapist_params
    params.require(:therapist).permit(
      :first_name, 
      :last_name, 
      :maternal_surname,
      :age,
      :degree,
      :email,
      :password,
      :session_location
    )
  end
end
