class Api::ServicesController < ApplicationController
  def index
    @services = Service.all
    render "index.json.jb"
  end

  def create
    @service = Service.new(
      name: params[:name],
      service_id: params[:service_id],
      service_type: params[:service_type],
      address: params[:address],
      city: params[:city],
      zipcode: params[:zipcode],
      county: params[:county],
      phone: params[:phone],
      website: params[:website],
      email: params[:email],
      description: params[:description],
      latitude: params[:latitude],
      longitude: params[:longitude],
    )
    @service.save!
    render "show.json.jb"
  end

  def show
    @service = Service.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @service = Service.find_by(id: params[:id])
    @service.name = params[:name] || @service.name
    @service.service_type = params[:service_type] || @service.service_type
    @service.address = params[:address] || @service.address
    @service.city = params[:city] || @service.city
    @service.zipcode = params[:zipcode] || @service.zipcode
    @service.county = params[:county] || @service.county
    @service.phone = params[:phone] || @service.phone
    @service.website = params[:website] || @service.website
    @service.email = params[:email] || @service.email
    @service.description = params[:description] || @service.description
    @service.latitude = params[:latitude] || @service.latitude
    @service.longitude = params[:longitude] || @service.longitude
    @service.save
    render "show.json.jb"
  end

  def destroy
    service = Service.find_by(id: params[:id])
    service.destroy
    render json: { message: "Service successfully destroyed." }
  end
end
