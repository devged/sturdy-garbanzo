class RateablesController < ApplicationController
  before_action :set_rateable, only: [:show, :edit, :update, :destroy]

  # GET /rateables
  # GET /rateables.json
  def index
    @rateables = Rateable.all
  end

  # GET /rateables/1
  # GET /rateables/1.json
  def show
  end

  # GET /rateables/new
  def new
    @rateable = Rateable.new
  end

  # GET /rateables/1/edit
  def edit
  end

  # POST /rateables
  # POST /rateables.json
  def create
    @rateable = Rateable.new(rateable_params)

    respond_to do |format|
      if @rateable.save
        format.html { redirect_to @rateable, notice: 'Rateable was successfully created.' }
        format.json { render :show, status: :created, location: @rateable }
      else
        format.html { render :new }
        format.json { render json: @rateable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rateables/1
  # PATCH/PUT /rateables/1.json
  def update
    respond_to do |format|
      if @rateable.update(rateable_params)
        format.html { redirect_to @rateable, notice: 'Rateable was successfully updated.' }
        format.json { render :show, status: :ok, location: @rateable }
      else
        format.html { render :edit }
        format.json { render json: @rateable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rateables/1
  # DELETE /rateables/1.json
  def destroy
    @rateable.destroy
    respond_to do |format|
      format.html { redirect_to rateables_url, notice: 'Rateable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rateable
      @rateable = Rateable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rateable_params
      params.require(:rateable).permit(:rateable, :rating)
    end
end
