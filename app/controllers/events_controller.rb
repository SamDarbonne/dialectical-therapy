class EventsController < ApplicationController
  def index
    @event = Event.all
  end
  def show
    @event = Event.find_by_id(params[:id])
    @user = @event.user
  end
  def new
    @event = Event.new
    user_id = params[:user_id]
    @user = User.find_by(user_id: user_id)
  end
end
