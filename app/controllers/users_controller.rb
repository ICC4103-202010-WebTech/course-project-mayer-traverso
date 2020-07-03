class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id]).profile_page
    @invite = Event.joins(:user_guests).where(user_guests: {user_id: @user.user.id})
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end
  #stackoverflow

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    ProfilePage.new(user=@user)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.profile_page.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def search
    #5.1
    @users = User.where("username LIKE :query",query: "%#{params[:q]}%").uniq
    #5.3, 5.4
    @events = Event.where("name LIKE :query",query: "%#{params[:q]}%").or(Event.where("description LIKE :query",query: "%#{params[:q]}%")).uniq
    #5.2
    @organizations = Organization.where("name LIKE :query",query: "%#{params[:q]}%").uniq
    #5.4
    @eventscreator = Event.joins(:user).where("users.username LIKE :query",query: "%#{params[:q]}%").uniq
    #5.5
    @eventsorganization = Organization.joins(:events).where("organizations.name LIKE :query",query: "%#{params[:q]}%").distinct.map{|org| org.events}.uniq

  end
  def Terms_of_use

  end
  def Terms_of_service

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if params[:id]
        @user = User.find(params[:id])
      else
        @user = User.find(current_user.id)
      end
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {}).permit(:name, :biography, :location, :flyer)
    end
end
