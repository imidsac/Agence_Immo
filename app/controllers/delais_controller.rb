class DelaisController < ApplicationController
  before_action :set_delai, only: [:show, :edit, :update, :destroy]

  # GET /delais
  # GET /delais.json
  def index
    @delais = Delai.all
  end

  # GET /delais/1
  # GET /delais/1.json
  def show
  end

  # GET /delais/new
  def new
    @delai = Delai.new
  end

  # GET /delais/1/edit
  def edit
  end

  # POST /delais
  # POST /delais.json
  def create
    @delai = Delai.new(delai_params)

    respond_to do |format|
      if @delai.save
        format.html { redirect_to @delai, notice: 'Delai was successfully created.' }
        format.json { render :show, status: :created, location: @delai }
      else
        format.html { render :new }
        format.json { render json: @delai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delais/1
  # PATCH/PUT /delais/1.json
  def update
    respond_to do |format|
      if @delai.update(delai_params)
        format.html { redirect_to @delai, notice: 'Delai was successfully updated.' }
        format.json { render :show, status: :ok, location: @delai }
      else
        format.html { render :edit }
        format.json { render json: @delai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delais/1
  # DELETE /delais/1.json
  def destroy
    @delai.destroy
    respond_to do |format|
      format.html { redirect_to delais_url, notice: 'Delai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delai
      @delai = Delai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delai_params
      params.require(:delai).permit(:name, :description, :nb_day)
    end
end
