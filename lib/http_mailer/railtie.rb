require 'http_mailer/delivery_method'

module HttpMailer
  class Railtie < Rails::Railtie
    initializer 'http_mailer.add_delivery_method', before: 'action_mailer.set_configs' do
      ActiveSupport.on_load :action_mailer do
        ActionMailer::Base.add_delivery_method(:http, HttpMailer::DeliveryMethod)
      end
    end
  end
end