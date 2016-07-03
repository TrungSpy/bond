class MessageController < ApplicationController
  before_action :set_message, only: [:show]

  def index
    @messages = Message.all

    render json: @messages
  end

  def show
    render json: @message
  end

  def create
    @message = Message.new(
      icon_type: params[:icon_type],
      tag: params[:tag],
      room_id: params[:room_id]
    )

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  def search_by_room_id
    @messages = Message.where(room_id: params[:room_id])

    render json: @messages
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end
end
