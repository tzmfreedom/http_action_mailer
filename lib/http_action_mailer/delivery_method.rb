require 'faraday'
require 'json'

module HttpActionMailer
  class DeliveryMethod
    def initialize(settings)
      @settings = settings
    end

    def deliver!(mail)
      http_post(mail)
    end

    private

    def http_post(mail)
      conn = Faraday.new(url: @settings[:url])
      conn.post do |r|
        r.path = "#{@settings[:path]}/#{Array(mail.to).first}"
        r.headers = @settings[:headers] if @settings[:headers]
        r.body = {
          from: mail.from,
          to: mail.to,
          cc: mail.cc,
          subject: mail.subject,
          text: mail.text_part.body.raw_source,
          html: mail.html_part.body.raw_source,
        }.to_json
      end
    end
  end
end