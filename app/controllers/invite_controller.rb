class InviteController < ApplicationController
  before_action :set_invite, only: [:show, :update]

  def index
    @invites = Invite.all

    render json: @invites
  end

  def show
    render json: @invite
  end

  def create
    @invite = Invite.new(
      lat: params[:lat],
      lon: params[:lon],
      category: params[:category] || 0,
      status: :inviting
    )

    if @invite.save
      render json: @invite, status: :created, location: @invite
    else
      render json: @invite.errors, status: :unprocessable_entity
    end
  end

  def update
    if @invite.update(invite_params)
      render json: @invite, status: :created, location: @invite
    else
      render json: @invite.errors, status: :unprocessable_entity
    end

  end

  def search
    origin = Invite.new(lat: params[:lat], lon: params[:lon])

    @invites =  Invite.within(params[:radius], origin: origin)

    render json: @invites
  end

  private
    def set_invite
      @invite = Invite.find(params[:id])
    end

    def invite_params
      params.permit(:id, :status, :category)
    end
end
