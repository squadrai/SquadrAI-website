class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.find_or_initialize_by(email: subscriber_params[:email])
    @subscriber.assign_attributes( subscriber_params)

    if @subscriber.save
      cookies[:saved_lead] = true
      redirect_to root_path, notice: "Saved Successfully!"
    else
      redirect_to root_path, notice: "Failed to save"
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, :company)
  end
end
