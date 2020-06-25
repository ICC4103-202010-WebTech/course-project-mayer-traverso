class UserGuestsController < ApplicationController
  before_action :set_user_guest, only: [:edit, :update, :destroy]

  # GET /user_guests
  # GET /user_guests.json
  def index
    @user_guests = UserGuest.all
  end

  # GET /user_guests/1
  # GET /user_guests/1.json
  def show
  end

  # GET /user_guests/new
  def new
    @user_guest = UserGuest.new
  end

  # GET /user_guests/1/edit
  def edit
  end

  # POST /user_guests
  # POST /user_guests.json
  def create
    @user_guest = UserGuest.new(user_guest_params)

    respond_to do |format|
      if @user_guest.save
        format.html { redirect_to event_path(@user_guest.event_id), notice: 'User guest was successfully created.' }
        format.json { render :show, status: :created, location: @user_guest }
      else
        format.html { render :new }
        format.json { render json: @user_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_guests/1
  # PATCH/PUT /user_guests/1.json
  def update
    respond_to do |format|
      if @user_guest.update(user_guest_params)
        format.html { redirect_to @user_guest, notice: 'User guest was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_guest }
      else
        format.html { render :edit }
        format.json { render json: @user_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_guests/1
  # DELETE /user_guests/1.json
  def destroy
    @user_guest.destroy
    respond_to do |format|
      format.html { redirect_to user_guests_url, notice: 'User guest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_guest
      @user_guest = UserGuest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_guest_params
      params.fetch(:user_guest, {}).permit(:user_id, :event_id)
    end
end
