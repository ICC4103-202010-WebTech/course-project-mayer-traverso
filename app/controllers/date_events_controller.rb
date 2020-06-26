class DateEventsController < ApplicationController
  before_action :set_date_event, only: [:edit, :update, :destroy]

  # GET /date_events
  # GET /date_events.json
  def index
    @date_events = DateEvent.all
  end

  # GET /date_events/1
  # GET /date_events/1.json
  def show
  end

  # GET /date_events/new
  def new
    @date_event = DateEvent.new
  end

  # GET /date_events/1/edit
  def edit
  end

  # POST /date_events
  # POST /date_events.json
  def create
    @date_event = DateEvent.new(date_event_params)

    respond_to do |format|
      if @date_event.save
        format.html { redirect_to event_path(@date_event.event_id), notice: 'Date event was successfully created.' }
        format.json { render :show, status: :created, location: @date_event }
      else
        format.html { render :new }
        format.json { render json: @date_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_events/1
  # PATCH/PUT /date_events/1.json
  def update
    respond_to do |format|
      if @date_event.update(date_event_params)
        format.html { redirect_to @date_event, notice: 'Date event was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_event }
      else
        format.html { render :edit }
        format.json { render json: @date_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_events/1
  # DELETE /date_events/1.json
  def destroy
    @date_event.destroy
    respond_to do |format|
      format.html { redirect_to date_events_url, notice: 'Date event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_event
      @date_event = DateEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_event_params
      params.fetch(:date_event, {}).permit( :date, :event_id)
    end
end
