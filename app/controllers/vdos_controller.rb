class VdosController < ApplicationController
  before_action :set_vdo, only: [:show, :edit, :update, :destroy]

  # GET /vdos
  # GET /vdos.json
  def index
    @vdos = Vdo.all
  end

  # GET /vdos/1
  # GET /vdos/1.json
  def show
  end

  # GET /vdos/new
  def new
    @vdo = Vdo.new
  end

  # GET /vdos/1/edit
  def edit
  end

  # POST /vdos
  # POST /vdos.json
  def create
    @vdo = Vdo.new(vdo_params)

    respond_to do |format|
      if @vdo.save
        format.html { redirect_to @vdo, notice: 'Vdo was successfully created.' }
        format.json { render :show, status: :created, location: @vdo }
      else
        format.html { render :new }
        format.json { render json: @vdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vdos/1
  # PATCH/PUT /vdos/1.json
  def update
    respond_to do |format|
      if @vdo.update(vdo_params)
        format.html { redirect_to @vdo, notice: 'Vdo was successfully updated.' }
        format.json { render :show, status: :ok, location: @vdo }
      else
        format.html { render :edit }
        format.json { render json: @vdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vdos/1
  # DELETE /vdos/1.json
  def destroy
    @vdo.destroy
    respond_to do |format|
      format.html { redirect_to vdos_url, notice: 'Vdo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vdo
      @vdo = Vdo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vdo_params
      params.require(:vdo).permit(:title, :body)
    end
end
