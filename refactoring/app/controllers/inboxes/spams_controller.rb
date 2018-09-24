class Inboxes::SpamsController < ApplicationController
  before_action :set_inboxes_spam, only: [:show, :edit, :update, :destroy]

  # GET /inboxes/spams
  # GET /inboxes/spams.json
  def index
    @inboxes_spams = Inboxes::Spam.all
  end

  # GET /inboxes/spams/1
  # GET /inboxes/spams/1.json
  def show
  end

  # GET /inboxes/spams/new
  def new
    @inboxes_spam = Inboxes::Spam.new
  end

  # GET /inboxes/spams/1/edit
  def edit
  end

  # POST /inboxes/spams
  # POST /inboxes/spams.json
  def create
    @inboxes_spam = Inboxes::Spam.new(inboxes_spam_params)

    respond_to do |format|
      if @inboxes_spam.save
        format.html { redirect_to @inboxes_spam, notice: 'Spam was successfully created.' }
        format.json { render :show, status: :created, location: @inboxes_spam }
      else
        format.html { render :new }
        format.json { render json: @inboxes_spam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inboxes/spams/1
  # PATCH/PUT /inboxes/spams/1.json
  def update
    respond_to do |format|
      if @inboxes_spam.update(inboxes_spam_params)
        format.html { redirect_to @inboxes_spam, notice: 'Spam was successfully updated.' }
        format.json { render :show, status: :ok, location: @inboxes_spam }
      else
        format.html { render :edit }
        format.json { render json: @inboxes_spam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inboxes/spams/1
  # DELETE /inboxes/spams/1.json
  def destroy
    @inboxes_spam.destroy
    respond_to do |format|
      format.html { redirect_to inboxes_spams_url, notice: 'Spam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inboxes_spam
      @inboxes_spam = Inboxes::Spam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inboxes_spam_params
      params.require(:inboxes_spam).permit(:spam_flag, :inbox_id)
    end
end
