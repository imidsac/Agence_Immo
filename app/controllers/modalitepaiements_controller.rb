class ModalitepaiementsController < ApplicationController
  before_action :set_modalitepaiement, only: [:show, :edit, :update, :destroy]

  # GET /modalitepaiements
  # GET /modalitepaiements.json
  def index
    @modalitepaiements = Modalitepaiement.all
  end

  # GET /modalitepaiements/1
  # GET /modalitepaiements/1.json
  def show
  end

  # GET /modalitepaiements/new
  def new
    @modalitepaiement = Modalitepaiement.new
  end

  # GET /modalitepaiements/1/edit
  def edit
  end

  # POST /modalitepaiements
  # POST /modalitepaiements.json
  def create
    @modalitepaiement = Modalitepaiement.new(modalitepaiement_params)

    respond_to do |format|
      if @modalitepaiement.save
        format.html { redirect_to @modalitepaiement, notice: 'Modalitepaiement was successfully created.' }
        format.json { render :show, status: :created, location: @modalitepaiement }
      else
        format.html { render :new }
        format.json { render json: @modalitepaiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modalitepaiements/1
  # PATCH/PUT /modalitepaiements/1.json
  def update
    respond_to do |format|
      if @modalitepaiement.update(modalitepaiement_params)
        format.html { redirect_to @modalitepaiement, notice: 'Modalitepaiement was successfully updated.' }
        format.json { render :show, status: :ok, location: @modalitepaiement }
      else
        format.html { render :edit }
        format.json { render json: @modalitepaiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modalitepaiements/1
  # DELETE /modalitepaiements/1.json
  def destroy
    @modalitepaiement.destroy
    respond_to do |format|
      format.html { redirect_to modalitepaiements_url, notice: 'Modalitepaiement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modalitepaiement
      @modalitepaiement = Modalitepaiement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modalitepaiement_params
      params.require(:modalitepaiement).permit(:mode, :description)
    end
end
