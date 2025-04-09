class SessionsController < ApplicationController
  def new
  end

  def create
    therapist = Therapist.find_by(email: params[:email])
    
    if therapist&.authenticate(params[:password])
      session[:therapist_id] = therapist.id
      redirect_to bienvenido_path, notice: 'Sesión iniciada correctamente'
    else
      flash.now[:alert] = 'Email o contraseña inválidos'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:therapist_id] = nil
    redirect_to root_path, notice: 'Sesión cerrada correctamente'
  end
end
