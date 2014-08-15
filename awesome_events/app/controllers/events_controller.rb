class EventsController < ApplicationController
  before_action :authenticate, except: :show
#  helper_method :current_user, :logged_in?

   
#  def current_user
#    return unless session[:user_id]
#    @current_user ||= User.find(session[:user_id])
#  end

  def destroy
    @event = current_user.created_events.find(params[:id])
    @event.destroy!
    redirect_to root_path, notice: '削除しました'
  end
  def edit 
    @event = current_user.created_events.find(params[:id])
  end

  def update
    @event = current_user.created_events.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notifies: '更新しました'
    else
        render :edit
    end
  end


  def show
    @event = Event.find(params[:id])
  end

  def new
   @event = current_user.created_events.build  
  end
  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event, notice: '作成しました'
      else
        render :new
    end
  end

  private
  
  def event_params
    params.require(:event).permit(
      :name, :place, :content, :start_time, :end_time
    )
  end

end
