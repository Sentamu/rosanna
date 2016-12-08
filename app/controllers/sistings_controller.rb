class SistingsController < ApplicationController
  before_action :set_sisting, only: [:show, :edit, :update, :destroy]

  # GET /sistings
  # GET /sistings.json
  def index
    @sistings = Sisting.all
  end

  # GET /sistings/1
  # GET /sistings/1.json
  def show
  end

  # GET /sistings/new
  def new
    @sisting = Sisting.new
  end

  # GET /sistings/1/edit
  def edit
  end

  # POST /sistings
  # POST /sistings.json
  def create
    @sisting = Sisting.new(sisting_params)

    respond_to do |format|
      if @sisting.save
        format.html { redirect_to @sisting, notice: 'Sisting was successfully created.' }
        format.json { render :show, status: :created, location: @sisting }
      else
        format.html { render :new }
        format.json { render json: @sisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sistings/1
  # PATCH/PUT /sistings/1.json
  def update
    respond_to do |format|
      if @sisting.update(sisting_params)
        format.html { redirect_to @sisting, notice: 'Sisting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sisting }
      else
        format.html { render :edit }
        format.json { render json: @sisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistings/1
  # DELETE /sistings/1.json
  def destroy
    @sisting.destroy
    respond_to do |format|
      format.html { redirect_to sistings_url, notice: 'Sisting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sisting
      @sisting = Sisting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sisting_params
      params.require(:sisting).permit(:name, :description, :sellprice, :rentprice, :image)
    end
end
