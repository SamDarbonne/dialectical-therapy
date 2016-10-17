class EventsController < ApplicationController

  def index
    @event = Event.all
  end

  def new
<<<<<<< HEAD
  user_name = params[:user_name]
  @user = User.find_by(user_name: user_name)
    if !current_user
      redirect_to root_path
    elsif @user.id != current_user.id
      redirect_to user_path(current_user.user_name)
    else
      @event = Event.new
    end
=======
    @event = Event.new
    user_name = params[:user_name]
    @user = User.find_by(user_name: user_name)
>>>>>>> bf0c710d651b6490c397daf3195034ba1e98ea0e
  end

  def create
    @event = Event.create(event_params)
    user_name = params[:user_name]
    redirect_to user_path(user_name)
  end

  def show
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    user_name = params[:user_name]
    @user = User.find_by(user_name: user_name)
  end

  def edit
    @event = Event.find_by_id(params[:id])
    user_name = params[:user_name]
    @user = User.find_by(user_name: user_name)
  end

  def update
    @event = Event.find_by_id(params[:id])
    if @event.update(event_params)
      redirect_to user_path(User.find_by_id(@event.user_id).user_name)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @user = User.find_by_id(@event.user_id)
    @event.destroy
    redirect_to user_path(@user.user_name)
  end

  private
  def event_params
    event_info = params.require(:event).permit(:behavior, :trigger, :before, :before_notes, :after, :after_notes, :distraction, :soothing, :improving, :helpful, :hurtful, :reflection, :victory)
    event_params = event_info.merge({user_id: current_user.id})
  end


end
