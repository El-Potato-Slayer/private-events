class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authorize, except: %i[index show]

  def index
    @events = Event.all
    @past_events = Event.past_events(Date.today)
    @upcoming_events = Event.upcoming_events(Date.today)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit; end

  def create
    @event = current_user.created_events.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def enroll
    @event = Event.find(params[:id])
    if @event.attendees.include?(current_user)
      redirect_to @event, alert: 'You are already enrolled to attend this event'
    else
      @event.attendees << current_user
      redirect_to @event, notice: 'You have successfully enrolled for this event'
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.fetch(:event, {}).permit(:date, :title, :description, :location, :user_id)
  end
end
