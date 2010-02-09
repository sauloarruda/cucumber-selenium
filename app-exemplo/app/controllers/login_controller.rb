class LoginController < ApplicationController
  
  def entrar
    if (params[:login] == "sauloarruda" and params[:senha] == "secret")
      session[:login] = "sauloarruda"
      redirect_to "/home"
    else
      flash[:error] = "Usuário ou senha inválidos"
      render :action => "index"
    end
  end
  
end
