require 'http_action_mailer/delivery_method'

module HttpActionMailer
  class Railtie < Rails::Railtie
    initializer 'http_action_mailer.add_delivery_method', before: 'action_mailer.set_configs' do
      ActiveSupport.on_load :action_mailer do
        ActionMailer::Base.add_delivery_method(:http, HttpActionMailer::DeliveryMethod)
      end
    end
  end
end