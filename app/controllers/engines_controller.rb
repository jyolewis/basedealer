class EnginesController < ApplicationController
  before_action :set_engine, only: [:show, :update, :destroy]

  # GET /engines
  # GET /engines.json
  def index
    @engines = Engine.all

    render json: @engines
  end

  # GET /engines/1
  # GET /engines/1.json
  def show
    render json: @engine
  end

  # POST /engines
  # POST /engines.json
  def create
    @engine = Engine.new(engine_params)

    if @engine.save
      render json: @engine, status: :created, location: @engine
    else
      render json: @engine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /engines/1
  # PATCH/PUT /engines/1.json
  def update
    @engine = Engine.find(params[:id])

    if @engine.update(engine_params)
      head :no_content
    else
      render json: @engine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /engines/1
  # DELETE /engines/1.json
  def destroy
    @engine.destroy

    head :no_content
  end

  private

    def set_engine
      @engine = Engine.find(params[:id])
    end

    def engine_params
      params.require(:engine).permit(:name, :price, :description)
    end
end
