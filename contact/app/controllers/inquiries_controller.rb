require 'kintone'
class InquiriesController < ApplicationController
  include KintoneVariable

  def new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      set_kintone_api # call concerns/kintone_variable.rb

      # Record register(single record)
      # Use Hash
      record = {"Customer" => {"value" => inquiry_params[:company_name]},
                "Customer_name" => {"value" => inquiry_params[:client_name]},
                "QType" => {"value" => inquiry_params[:contact_type]},
                "Detail" => {"value" => inquiry_params[:details]}
                }
      @api.record.register(@app_id, record)
      redirect_to inquiries_path
    else
      render 'new'
    end
  end

  def index
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:company_name, :client_name, :contact_type, :details)
    end
end
