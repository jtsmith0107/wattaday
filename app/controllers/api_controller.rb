module Api
  class ApiController < ApplicationController
    def data
      user = User.find_by_email(params[:email])
      device = user.devices.find_by_name(data_params[:device_name])
      
      #how to save?
      
    end
    # before_action :require_signed_in!

    # make sure that the user is the device owner before letting him look at the data
    
    private
    def data_params
      params.require(:email).permit(:timestamp, :device_name)
    end
  end
end
