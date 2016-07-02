class RoomController < ApplicationController
  before_action :set_room, only: [:show, :update]

  def show
    render json: @room
  end

  def create
    @room = Room.new(
      invite_id: params[:invite_id]
    )

    if @room.save
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  def update
    if @room.update(room_params)
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  def search_by_invite_id
    @room =  Room.where(invite_id: params[:invite_id]).first

    render json: @room
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.permit(:id, :target_lat, :target_lon)
    end
end
