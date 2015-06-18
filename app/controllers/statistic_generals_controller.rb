class StatisticGeneralsController < ApplicationController
  before_action :set_statistic_general, only: [:show, :edit, :update, :destroy]

  # GET /statistic_generals
  # GET /statistic_generals.json
  def index
    @statistic_generals = StatisticGeneral.all
  end

  # GET /statistic_generals/1
  # GET /statistic_generals/1.json
  def show
  end

  # GET /statistic_generals/new
  def new
    @statistic_general = StatisticGeneral.new
  end

  # GET /statistic_generals/1/edit
  def edit
  end

  # POST /statistic_generals
  # POST /statistic_generals.json
  def create
    @statistic_general = StatisticGeneral.new(statistic_general_params)

    respond_to do |format|
      if @statistic_general.save
        format.html { redirect_to @statistic_general, notice: 'Statistic general was successfully created.' }
        format.json { render :show, status: :created, location: @statistic_general }
      else
        format.html { render :new }
        format.json { render json: @statistic_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statistic_generals/1
  # PATCH/PUT /statistic_generals/1.json
  def update
    respond_to do |format|
      if @statistic_general.update(statistic_general_params)
        format.html { redirect_to @statistic_general, notice: 'Statistic general was successfully updated.' }
        format.json { render :show, status: :ok, location: @statistic_general }
      else
        format.html { render :edit }
        format.json { render json: @statistic_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statistic_generals/1
  # DELETE /statistic_generals/1.json
  def destroy
    @statistic_general.destroy
    respond_to do |format|
      format.html { redirect_to statistic_generals_url, notice: 'Statistic general was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic_general
      @statistic_general = StatisticGeneral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_general_params
      params.require(:statistic_general).permit(:year, :month, :expense, :recipe)
    end
end
