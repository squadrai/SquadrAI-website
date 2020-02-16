class WelcomeController < ApplicationController
  def homepage
    @subscriber = Subscriber.new
  end
end


