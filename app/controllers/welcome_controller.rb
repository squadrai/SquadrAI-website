class WelcomeController < ApplicationController
  def homepage
    @message = "Hello, how are you today? This is an controller sending a message to the view!"
  end
end
