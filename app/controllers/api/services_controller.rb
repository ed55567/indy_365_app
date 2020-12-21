class Api::ServicesController < ApplicationController
  def index
    @services = Service.all
    render "index.json.jb"
  end

  def create
    @service = Service.new(
    name: params[:name],
    service_id: params.[:service_id],
    service_type: params.[:service_type],
    address: params.[:address],
    city: params.[:city],
    zipcode: params.[:zipcode],
    county: params.[:county],
    phone: params.[:phone],
    website: params.[:website],
    email: params.[:email],
    description: params.[:description],
    latitude: params.[:latitude],
    longitude: params.[:longitude]
    )
    @service.save
    render "show.json.jb"
  end
end
