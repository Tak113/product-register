class ShrtctkiesController < ApplicationController
  before_action :set_shrtctky, only: [:show, :edit, :update, :destroy]

  # GET /shrtctkies
  # GET /shrtctkies.json
  def index
    @shrtctkies = Shrtctky.all
  end

  # GET /shrtctkies/1
  # GET /shrtctkies/1.json
  def show
  end

  # GET /shrtctkies/new
  def new
    @shrtctky = Shrtctky.new
  end

  # GET /shrtctkies/1/edit
  def edit
  end

  # POST /shrtctkies
  # POST /shrtctkies.json
  def create
    @shrtctky = Shrtctky.new(shrtctky_params)

    respond_to do |format|
      if @shrtctky.save
        format.html { redirect_to @shrtctky, notice: 'Shrtctky was successfully created.' }
        format.json { render :show, status: :created, location: @shrtctky }
      else
        format.html { render :new }
        format.json { render json: @shrtctky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shrtctkies/1
  # PATCH/PUT /shrtctkies/1.json
  def update
    respond_to do |format|
      if @shrtctky.update(shrtctky_params)
        format.html { redirect_to @shrtctky, notice: 'Shrtctky was successfully updated.' }
        format.json { render :show, status: :ok, location: @shrtctky }
      else
        format.html { render :edit }
        format.json { render json: @shrtctky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shrtctkies/1
  # DELETE /shrtctkies/1.json
  def destroy
    @shrtctky.destroy
    respond_to do |format|
      format.html { redirect_to shrtctkies_url, notice: 'Shrtctky was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shrtctky
      @shrtctky = Shrtctky.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shrtctky_params
      params.require(:shrtctky).permit(:name, :key, :note)
    end
end
