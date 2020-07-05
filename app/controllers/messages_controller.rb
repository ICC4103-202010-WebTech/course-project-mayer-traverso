class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @id = Message.where(Message.arel_table[:user_id].eq(current_user.id).or(MessageRecipient.arel_table[:user_id].eq(current_user.id))).joins(Message.arel_table.join(User.arel_table).on(Message.arel_table[:user_id].eq(User.arel_table[:id])).join_sources).joins(Message.arel_table.join(MessageRecipient.arel_table).on(MessageRecipient.arel_table[:message_id].eq(Message.arel_table[:id])).join_sources).select("CASE WHEN message_recipients.user_id =  #{current_user.id} THEN messages.user_id ELSE message_recipients.user_id END AS user_id").to_a.pluck(:user_id).uniq
    @lastmessage = []
    @id.each do |id|
      message = Message.where(Message.arel_table[:user_id].eq(current_user.id).and(MessageRecipient.arel_table[:user_id].eq(id)).or(Message.arel_table[:user_id].eq(id).and(MessageRecipient.arel_table[:user_id].eq(current_user.id)))).joins(Message.arel_table.join(User.arel_table).on(Message.arel_table[:user_id].eq(User.arel_table[:id])).join_sources).joins(Message.arel_table.join(MessageRecipient.arel_table).on(MessageRecipient.arel_table[:message_id].eq(Message.arel_table[:id])).join_sources).order(created_at: :asc).pluck("users.username,messages.text,messages.created_at").last
      @lastmessage.append([id,message[0],message[1],message[2]])
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @messages = Message.where(Message.arel_table[:user_id].eq(current_user.id).and(MessageRecipient.arel_table[:user_id].eq(params[:id])).or(Message.arel_table[:user_id].eq(params[:id]).and(MessageRecipient.arel_table[:user_id].eq(current_user.id)))).joins(Message.arel_table.join(User.arel_table).on(Message.arel_table[:user_id].eq(User.arel_table[:id])).join_sources).joins(Message.arel_table.join(MessageRecipient.arel_table).on(MessageRecipient.arel_table[:message_id].eq(Message.arel_table[:id])).join_sources).order(created_at: :asc).pluck("users.username,messages.text,messages.created_at")
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params.except(:re))
    respond_to do |format|
      if @message.save
        a = MessageRecipient.new(message_id: @message.id, user_id: message_params[:re])
        a.save
        format.html { redirect_to message_path(message_params[:re]), notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.fetch(:message, {}).permit(:text, :user_id, :re)
    end
end
