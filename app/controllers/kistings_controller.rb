class KistingsController < ApplicationController
  before_action :set_kisting, only: [:show, :edit, :update, :destroy]

  # GET /kistings
  # GET /kistings.json
  def index
    @kistings = Kisting.all
  end

  # GET /kistings/1
  # GET /kistings/1.json
  def show
  end

  # GET /kistings/new
  def new
    @kisting = Kisting.new
  end

  # GET /kistings/1/edit
  def edit
  end

  # POST /kistings
  # POST /kistings.json
  def create
    @kisting = Kisting.new(kisting_params)

    respond_to do |format|
      if @kisting.save
        format.html { redirect_to @kisting, notice: 'Kisting was successfully created.' }
        format.json { render :show, status: :created, location: @kisting }
      else
        format.html { render :new }
        format.json { render json: @kisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kistings/1
  # PATCH/PUT /kistings/1.json
  def update
    respond_to do |format|
      if @kisting.update(kisting_params)
        format.html { redirect_to @kisting, notice: 'Kisting was successfully updated.' }
        format.json { render :show, status: :ok, location: @kisting }
      else
        format.html { render :edit }
        format.json { render json: @kisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kistings/1
  # DELETE /kistings/1.json
  def destroy
    @kisting.destroy
    respond_to do |format|
      format.html { redirect_to kistings_url, notice: 'Kisting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kisting
      @kisting = Kisting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kisting_params
      params.require(:kisting).permit(:name, :description, :sellprice, :rentprice, :image)
    end
end
