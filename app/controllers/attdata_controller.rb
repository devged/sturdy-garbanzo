class AttdataController < ApplicationController
  before_action :set_attdatum, only: [:show, :edit, :update, :destroy]

  # GET /attdata
  # GET /attdata.json
  def index
    @attdata = Attdatum.all
  end

  # GET /attdata/1
  # GET /attdata/1.json
  def show
  end

  # GET /attdata/new
  def new
    @attdatum = Attdatum.new
  end

  # GET /attdata/1/edit
  def edit
  end

  # POST /attdata
  # POST /attdata.json
  def create
    @attdatum = Attdatum.new(attdatum_params)

    respond_to do |format|
      if @attdatum.save
        format.html { redirect_to @attdatum, notice: 'Attdatum was successfully created.' }
        format.json { render :show, status: :created, location: @attdatum }
      else
        format.html { render :new }
        format.json { render json: @attdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attdata/1
  # PATCH/PUT /attdata/1.json
  def update
    respond_to do |format|
      if @attdatum.update(attdatum_params)
        format.html { redirect_to @attdatum, notice: 'Attdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @attdatum }
      else
        format.html { render :edit }
        format.json { render json: @attdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attdata/1
  # DELETE /attdata/1.json
  def destroy
    @attdatum.destroy
    respond_to do |format|
      format.html { redirect_to attdata_url, notice: 'Attdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attdatum
      @attdatum = Attdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attdatum_params
      params.require(:attdatum).permit(:personnel_id, :season_id, :rateable_id)
    end
end
