class HogesController < ApplicationController
  before_action :set_hoge, only: [:show, :update, :destroy]

  # GET /hoges
  # GET /hoges.json
  def index
    @hoges = Hoge.all

    render json: @hoges
  end

  # GET /hoges/1
  # GET /hoges/1.json
  def show
    render json: @hoge
  end

  # POST /hoges
  # POST /hoges.json
  def create
    @hoge = Hoge.new(hoge_params)

    if @hoge.save
      render json: @hoge, status: :created, location: @hoge
    else
      render json: @hoge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hoges/1
  # PATCH/PUT /hoges/1.json
  def update
    @hoge = Hoge.find(params[:id])

    if @hoge.update(hoge_params)
      head :no_content
    else
      render json: @hoge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hoges/1
  # DELETE /hoges/1.json
  def destroy
    @hoge.destroy

    head :no_content
  end

  private

    def set_hoge
      @hoge = Hoge.find(params[:id])
    end

    def hoge_params
      params.require(:hoge).permit(:body)
    end
end
