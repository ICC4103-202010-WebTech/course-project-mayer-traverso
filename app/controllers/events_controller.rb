class EventsController < ApplicationController
  before_action :set_event , only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = UserGuest.joins(:event).where(user_id: 2).pluck(:event_id)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @comments = Event.find(params[:id]).comments
  end

  # GET /events/new
  def new
    @event = Event.new
    2.times { @event.date_events.build}
    1.times { @event.user_guests.build}
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
     @event = Event.new(event_params)
     @event.user_id = 2

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

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
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

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
     @event.destroy
     respond_to do |format|
       format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
       format.json { head :no_content }
     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.fetch(:event, {}).permit(:name, :description, :flyer, date_events_attributes: [:date],
                                      user_guests_attributes: [:user_id], comments_attributes: [:text, :user_id, :event_id])
    end
end
