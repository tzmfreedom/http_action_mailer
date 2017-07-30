class HomeController < ApplicationController
  def index
    UserMailer.post.deliver_now
  end
end
