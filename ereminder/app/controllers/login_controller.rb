class LoginController < ApplicationController
  def index
    if session[:login] then
      @msg = session[:login] + 'ログイン中です'
    end
    if params.key?(:name) || params.key?(:pass) 
      user = User.find_by_name params[:name]
      if user && user.authenticate(params[:pass])
        session[:login] = params[:name]
      else
        session[:login] = nil
        @msg = 'User名またはパスワードが間違っています'
      end
    end 
  end  
end
