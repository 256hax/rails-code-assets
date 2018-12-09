
=begin
RoR Controller Sample
Copyright (c) 2018 Cybozu
Licensed under the MIT License
=end

require 'kintone'
class InquiriesController < ApplicationController

  def new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      # ENV => require "/.env" file
      kintone_service_url = "#{ENV["KINTONE_SUBDOMAIN"]}.cybozu.com"
      kintone_api_token = ENV["KINTONE_API_TOKEN"]
      # api = Kintone::Api.new("{サブドメイン名}.cybozu.com", "{APIトークン}")
      api = Kintone::Api.new(kintone_service_url, kintone_api_token)
      # app_id = {アプリケーションID}
      app_id = ENV["KINTONE_CONTACT_APP_ID"]
      p kintone_service_url
      p kintone_api_token
      p app_id

      # Record register(single record)
      # Use Hash
      record = {"Customer" => {"value" => inquiry_params[:company_name]},
                "Customer_name" => {"value" => inquiry_params[:client_name]},
                "QType" => {"value" => inquiry_params[:contact_type]},
                "Detail" => {"value" => inquiry_params[:details]}
                }
      api.record.register(app_id, record)
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:company_name, :client_name, :contact_type, :details)
    end
end
