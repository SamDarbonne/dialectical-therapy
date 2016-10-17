class EventsController < ApplicationController

  def index
    @event = Event.all
  end

  def new
    @event = Event.new
    user_id = params[:user_id]
    @user = User.find_by(id: user_id)
  end

  def create
    @event = Event.create(event_params)
    redirect_to user_path(@event.user)
  end

  def show
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    user_id = params[:user_id]
    @user = User.find_by(id: user_id)
  end

  def edit
    @event = Event.find_by_id(params[:id])
    user_id = params[:user_id]
    @user = User.find_by(id: user_id)
  end

  def update
    @event = Event.find_by_id(params[:id])
    if @event.update(event_params)
      redirect_to user_path(@event.user)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_path
  end

  private
  def event_params
    event_info = params.require(:event).permit(:behavior, :trigger, :before, :before_notes, :after, :after_notes, :distraction, :soothing, :improving, :helpful, :hurtful, :reflection, :victory)
    event_params = event_info.merge({user_id: (params[:user_id])})
  end


end
