class StatisticOwnersController < ApplicationController
  before_action :set_statistic_owner, only: [:show, :edit, :update, :destroy]

  # GET /statistic_owners
  # GET /statistic_owners.json
  def index
    @statistic_owners = StatisticOwner.all
  end

  # GET /statistic_owners/1
  # GET /statistic_owners/1.json
  def show
  end

  # GET /statistic_owners/new
  def new
    @statistic_owner = StatisticOwner.new
  end

  # GET /statistic_owners/1/edit
  def edit
  end

  # POST /statistic_owners
  # POST /statistic_owners.json
  def create
    @statistic_owner = StatisticOwner.new(statistic_owner_params)

    respond_to do |format|
      if @statistic_owner.save
        format.html { redirect_to @statistic_owner, notice: 'Statistic owner was successfully created.' }
        format.json { render :show, status: :created, location: @statistic_owner }
      else
        format.html { render :new }
        format.json { render json: @statistic_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statistic_owners/1
  # PATCH/PUT /statistic_owners/1.json
  def update
    respond_to do |format|
      if @statistic_owner.update(statistic_owner_params)
        format.html { redirect_to @statistic_owner, notice: 'Statistic owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @statistic_owner }
      else
        format.html { render :edit }
        format.json { render json: @statistic_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statistic_owners/1
  # DELETE /statistic_owners/1.json
  def destroy
    @statistic_owner.destroy
    respond_to do |format|
      format.html { redirect_to statistic_owners_url, notice: 'Statistic owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic_owner
      @statistic_owner = StatisticOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_owner_params
      params.require(:statistic_owner).permit(:year, :month, :provide, :pay)
    end
end
