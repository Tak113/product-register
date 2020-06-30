class ShellscriptsController < ApplicationController
  before_action :set_shellscript, only: [:show, :edit, :update, :destroy]

  # GET /shellscripts
  # GET /shellscripts.json
  def index
    @shellscripts = Shellscript.all
  end

  # GET /shellscripts/1
  # GET /shellscripts/1.json
  def show
  end

  # GET /shellscripts/new
  def new
    @shellscript = Shellscript.new
  end

  # GET /shellscripts/1/edit
  def edit
  end

  # POST /shellscripts
  # POST /shellscripts.json
  def create
    @shellscript = Shellscript.new(shellscript_params)

    respond_to do |format|
      if @shellscript.save
        format.html { redirect_to @shellscript, notice: 'Shellscript was successfully created.' }
        format.json { render :show, status: :created, location: @shellscript }
      else
        format.html { render :new }
        format.json { render json: @shellscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shellscripts/1
  # PATCH/PUT /shellscripts/1.json
  def update
    respond_to do |format|
      if @shellscript.update(shellscript_params)
        format.html { redirect_to @shellscript, notice: 'Shellscript was successfully updated.' }
        format.json { render :show, status: :ok, location: @shellscript }
      else
        format.html { render :edit }
        format.json { render json: @shellscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shellscripts/1
  # DELETE /shellscripts/1.json
  def destroy
    @shellscript.destroy
    respond_to do |format|
      format.html { redirect_to shellscripts_url, notice: 'Shellscript was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shellscript
      @shellscript = Shellscript.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shellscript_params
      params.require(:shellscript).permit(:app, :key, :note)
    end
end
