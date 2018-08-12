class Pt::MembersController < ApplicationController
  before_action :set_pt_member, only: [:show, :edit, :update, :destroy]

  # GET /pt/members
  # GET /pt/members.json
  def index
    @pt_members = Pt::Member.all
  end

  # GET /pt/members/1
  # GET /pt/members/1.json
  def show
  end

  # GET /pt/members/new
  def new
    @pt_member = Pt::Member.new
  end

  # GET /pt/members/1/edit
  def edit
  end

  # POST /pt/members
  # POST /pt/members.json
  def create
    @pt_member = Pt::Member.new(pt_member_params)

    respond_to do |format|
      if @pt_member.save
        format.html { redirect_to @pt_member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @pt_member }
      else
        format.html { render :new }
        format.json { render json: @pt_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt/members/1
  # PATCH/PUT /pt/members/1.json
  def update
    respond_to do |format|
      if @pt_member.update(pt_member_params)
        format.html { redirect_to @pt_member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_member }
      else
        format.html { render :edit }
        format.json { render json: @pt_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt/members/1
  # DELETE /pt/members/1.json
  def destroy
    @pt_member.destroy
    respond_to do |format|
      format.html { redirect_to pt_members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_member
      @pt_member = Pt::Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_member_params
      params.require(:pt_member).permit(:name, :birthdate, :sex, :email, :title, :comment, :area, :image)
    end
end
