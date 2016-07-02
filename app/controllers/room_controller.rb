class RoomController < ApplicationController
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

  private
    def set_room
      @room = Room.find(params[:id])
    end

end
