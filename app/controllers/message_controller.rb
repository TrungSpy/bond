class MessageController < ApplicationController
  before_action :set_message, only: [:show]

  def show
    render json: @message
  end

  def create
    @message = Message.new(
      body: params[:body],
      room_id: params[:room_id]
    )

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end
end
