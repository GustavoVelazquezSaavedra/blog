class PionersController < ApplicationController
  before_action :set_pioner, only: [:show, :edit, :update, :destroy]

  # GET /pioners
  # GET /pioners.json
  def index
    @pioners = Pioner.all
  end

  # GET /pioners/1
  # GET /pioners/1.json
  def show
  end

  # GET /pioners/new
  def new
    @pioner = Pioner.new
  end

  # GET /pioners/1/edit
  def edit
  end

  # POST /pioners
  # POST /pioners.json
  def create
    @pioner = Pioner.new(pioner_params)

    respond_to do |format|
      if @pioner.save
        format.html { redirect_to @pioner, notice: 'Pioner was successfully created.' }
        format.json { render :show, status: :created, location: @pioner }
      else
        format.html { render :new }
        format.json { render json: @pioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pioners/1
  # PATCH/PUT /pioners/1.json
  def update
    respond_to do |format|
      if @pioner.update(pioner_params)
        format.html { redirect_to @pioner, notice: 'Pioner was successfully updated.' }
        format.json { render :show, status: :ok, location: @pioner }
      else
        format.html { render :edit }
        format.json { render json: @pioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pioners/1
  # DELETE /pioners/1.json
  def destroy
    @pioner.destroy
    respond_to do |format|
      format.html { redirect_to pioners_url, notice: 'Pioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pioner
      @pioner = Pioner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pioner_params
      params.require(:pioner).permit(:\, :first_name, :last-name)
    end
end
