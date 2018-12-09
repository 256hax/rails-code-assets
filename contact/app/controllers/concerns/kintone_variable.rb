module KintoneVariable
  extend ActiveSupport::Concern

  def set_kintone_api
    # ENV is including ".env" file variables. see dotenve-rails gem.
    kintone_service_url = "#{ENV["KINTONE_SUBDOMAIN"]}.cybozu.com"
    kintone_api_token = ENV["KINTONE_API_TOKEN"]

    # api = Kintone::Api.new("{サブドメイン名}.cybozu.com", "{APIトークン}")
    @api = Kintone::Api.new(kintone_service_url, kintone_api_token)

    # app_id = {アプリケーションID}
    @app_id = ENV["KINTONE_CONTACT_APP_ID"]
  end
end
