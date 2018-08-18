class Pt::ParticipationsController < ApplicationController
  before_action :set_pt_participation, only: [:show, :edit, :update, :destroy]

  # GET /pt/participations
  # GET /pt/participations.json
  def index
    @pt_participations = Pt::Participation.all
  end

  # GET /pt/participations/1
  # GET /pt/participations/1.json
  def show
  end

  # GET /pt/participations/new
  def new
    @pt_participation = Pt::Participation.new
  end

  # GET /pt/participations/1/edit
  def edit
  end

  # POST /pt/participations
  # POST /pt/participations.json
  def create
    @pt_participation = Pt::Participation.new(pt_participation_params)

    respond_to do |format|
      if @pt_participation.save
        format.html { redirect_to @pt_participation, notice: 'Participation was successfully created.' }
        format.json { render :show, status: :created, location: @pt_participation }
      else
        format.html { render :new }
        format.json { render json: @pt_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt/participations/1
  # PATCH/PUT /pt/participations/1.json
  def update
    respond_to do |format|
      if @pt_participation.update(pt_participation_params)
        format.html { redirect_to @pt_participation, notice: 'Participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_participation }
      else
        format.html { render :edit }
        format.json { render json: @pt_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt/participations/1
  # DELETE /pt/participations/1.json
  def destroy
    @pt_participation.destroy
    respond_to do |format|
      format.html { redirect_to pt_participations_url, notice: 'Participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_participation
      @pt_participation = Pt::Participation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_participation_params
      params.require(:pt_participation).permit(:pt_event_id, :pt_member_id)
    end
end
