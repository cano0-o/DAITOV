class SessionsController < ApplicationController
  def new
  end

  def create
    tutor = Tutor.find_by(email: params[:email])
    
    if tutor&.authenticate(params[:password])
      session[:tutor_id] = tutor.id
      redirect_to bienvenido_path, notice: 'Sesión iniciada correctamente'
    else
      flash.now[:alert] = 'Email o contraseña inválidos'
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    reset_session
    redirect_to root_path, notice: 'Sesión cerrada correctamente'
  end
end
