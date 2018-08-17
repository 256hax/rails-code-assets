class Pt::EventsController < ApplicationController
  before_action :set_pt_event, only: [:show, :edit, :update, :destroy]

  # GET /pt/events
  # GET /pt/events.json
  def index
    @pt_events = Pt::Event.all
  end

  # GET /pt/events/1
  # GET /pt/events/1.json
  def show
  end

  # GET /pt/events/new
  def new
    @pt_event = Pt::Event.new
  end

  # GET /pt/events/1/edit
  def edit
  end

  # POST /pt/events
  # POST /pt/events.json
  def create
    @pt_event = Pt::Event.new(pt_event_params)

    respond_to do |format|
      if @pt_event.save
        format.html { redirect_to @pt_event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @pt_event }
      else
        format.html { render :new }
        format.json { render json: @pt_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt/events/1
  # PATCH/PUT /pt/events/1.json
  def update
    respond_to do |format|
      if @pt_event.update(pt_event_params)
        format.html { redirect_to @pt_event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_event }
      else
        format.html { render :edit }
        format.json { render json: @pt_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt/events/1
  # DELETE /pt/events/1.json
  def destroy
    @pt_event.destroy
    respond_to do |format|
      format.html { redirect_to pt_events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_event
      @pt_event = Pt::Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_event_params
      params.require(:pt_event).permit(:name, :the_date, :title, :comment, :area, :image, :pt_trainer_id)
    end
end
