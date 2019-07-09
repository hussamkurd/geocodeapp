class GeocoderController < ApplicationController
  before_action :check_params

  def general_respond(respond_object)
    respond_to do |format|
      format.json { render json: respond_object }
      format.html { render json: respond_object }
    end
  end

  def check_params
    if(!params['lat'].present? || !params['long'].present?)
      message = "You have to pass longitude and latitude params"
      status = false
      respond_object = { 'status' => status,'message'=> message }
      general_respond(respond_object)
    end
  end

  def check_longlat_within_country
    begin
      status, message = GecodeConditionsCheck.check_longlat_within_conditions(params['lat'], params['long'])
      respond_object = { 'status' => status,'message'=> message }
      general_respond(respond_object)

    rescue StandardError => e
      respond_object = { 'status' => false,'message'=> e.message }
      general_respond(respond_object)
    end
  end
end
