class ContratsController < ApplicationController
  before_action :set_contrat, only: [:show, :edit, :update, :destroy]

  # GET /contrats
  # GET /contrats.json
  def index
    @contrats = Contrat.all
  end

  # GET /contrats/1
  # GET /contrats/1.json
  def show
  end

  # GET /contrats/new
  def new
    @contrat = Contrat.new
  end

  # GET /contrats/1/edit
  def edit
  end

  # POST /contrats
  # POST /contrats.json
  def create
    @contrat = Contrat.new(contrat_params)

    respond_to do |format|
      if @contrat.save
        format.html { redirect_to @contrat, notice: 'Contrat was successfully created.' }
        format.json { render :show, status: :created, location: @contrat }
      else
        format.html { render :new }
        format.json { render json: @contrat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrats/1
  # PATCH/PUT /contrats/1.json
  def update
    respond_to do |format|
      if @contrat.update(contrat_params)
        format.html { redirect_to @contrat, notice: 'Contrat was successfully updated.' }
        format.json { render :show, status: :ok, location: @contrat }
      else
        format.html { render :edit }
        format.json { render json: @contrat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrats/1
  # DELETE /contrats/1.json
  def destroy
    @contrat.destroy
    respond_to do |format|
      format.html { redirect_to contrats_url, notice: 'Contrat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_contrat
    @contrat = Contrat.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def contrat_params
    params.require(:contrat).permit(:article, :description, :type_contrat)
  end
end
