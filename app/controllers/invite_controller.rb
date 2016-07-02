class InviteController < ApplicationController
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
