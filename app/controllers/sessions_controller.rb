class SessionsController < ApplicationController
  def new
<<<<<<< HEAD
    
=======
>>>>>>> d6945b0e98c0287410d92ebe3a240da20777739f
  end

  def create
    user = User.find_by(name: params[:user][:name])
    user = user.try(:authenticate, params[:user][:password])
<<<<<<< HEAD

=======
>>>>>>> d6945b0e98c0287410d92ebe3a240da20777739f
    return redirect_to(controller: 'sessions', action: 'new') unless user
    session[:user_id] = user.id
    @user = user
    redirect_to(controller: 'users', action: 'index')
  end
end
