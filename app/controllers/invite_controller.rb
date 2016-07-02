class InviteController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.new(params)

    if @invite.save
      render json: @invite, status: :created, location: @invite
    else
      render json: @invite.errors, status: :unprocessable_entity
    end
  end

  def index
    @invites = Invite.all

    render json: @invites
  end

  def search
    origin = Invite.new(lat: params[:lat], lon: params[:lon])

    @invites =  Invite.within(params[:radius], origin: origin)

    render json: @invites
  end
end
