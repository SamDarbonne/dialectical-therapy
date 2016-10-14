class JohnniesController < ApplicationController
  before_action :set_johnny, only: [:show, :edit, :update, :destroy]

  # GET /johnnies
  # GET /johnnies.json
  def index
    @johnnies = Johnny.all
  end

  # GET /johnnies/1
  # GET /johnnies/1.json
  def show
  end

  # GET /johnnies/new
  def new
    @johnny = Johnny.new
  end

  # GET /johnnies/1/edit
  def edit
  end

  # POST /johnnies
  # POST /johnnies.json
  def create
    @johnny = Johnny.new(johnny_params)

    respond_to do |format|
      if @johnny.save
        format.html { redirect_to @johnny, notice: 'Johnny was successfully created.' }
        format.json { render :show, status: :created, location: @johnny }
      else
        format.html { render :new }
        format.json { render json: @johnny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /johnnies/1
  # PATCH/PUT /johnnies/1.json
  def update
    respond_to do |format|
      if @johnny.update(johnny_params)
        format.html { redirect_to @johnny, notice: 'Johnny was successfully updated.' }
        format.json { render :show, status: :ok, location: @johnny }
      else
        format.html { render :edit }
        format.json { render json: @johnny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /johnnies/1
  # DELETE /johnnies/1.json
  def destroy
    @johnny.destroy
    respond_to do |format|
      format.html { redirect_to johnnies_url, notice: 'Johnny was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_johnny
      @johnny = Johnny.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def johnny_params
      params.fetch(:johnny, {})
    end
end
