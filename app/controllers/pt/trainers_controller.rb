class Pt::TrainersController < ApplicationController
  before_action :set_pt_trainer, only: [:show, :edit, :update, :destroy]

  # GET /pt/trainers
  # GET /pt/trainers.json
  def index
    @pt_trainers = Pt::Trainer.all
  end

  # GET /pt/trainers/1
  # GET /pt/trainers/1.json
  def show
  end

  # GET /pt/trainers/new
  def new
    @pt_trainer = Pt::Trainer.new
  end

  # GET /pt/trainers/1/edit
  def edit
  end

  # POST /pt/trainers
  # POST /pt/trainers.json
  def create
    @pt_trainer = Pt::Trainer.new(pt_trainer_params)

    respond_to do |format|
      if @pt_trainer.save
        format.html { redirect_to @pt_trainer, notice: 'Trainer was successfully created.' }
        format.json { render :show, status: :created, location: @pt_trainer }
      else
        format.html { render :new }
        format.json { render json: @pt_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt/trainers/1
  # PATCH/PUT /pt/trainers/1.json
  def update
    respond_to do |format|
      if @pt_trainer.update(pt_trainer_params)
        format.html { redirect_to @pt_trainer, notice: 'Trainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_trainer }
      else
        format.html { render :edit }
        format.json { render json: @pt_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt/trainers/1
  # DELETE /pt/trainers/1.json
  def destroy
    @pt_trainer.destroy
    respond_to do |format|
      format.html { redirect_to pt_trainers_url, notice: 'Trainer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_trainer
      @pt_trainer = Pt::Trainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_trainer_params
      params.require(:pt_trainer).permit(:name, :birthdate, :sex, :email, :title, :comment, :area)
    end
end
