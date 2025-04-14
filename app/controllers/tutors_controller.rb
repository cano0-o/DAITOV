class TutorsController < ApplicationController
  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new(tutor_params)
    if @tutor.save
      redirect_to new_session_path, notice: 'Registro exitoso!'
    else
      render :new
    end
  end

  private

  def tutor_params
    params.require(:tutor).permit(
      :name, :paternal_last_name, :maternal_last_name,
      :gender, :birth_date, :current_profession,
      :graduation_year, :institution_name, :start_year,
      :email, :phone_number, :password, :password_confirmation
    )
  end
end
