class Api::AddressSearchController < ApplicationController
  # Take an addresss and return lat/lng
  def expand
    begin
      @addresses = Mapbox::Geocoder.geocode_forward(address_params[:a]) unless address_params[:a].nil?
      render template: "address_search/result"
    rescue StandardError
      render json: { errors: ["Unable to perform forward geocoding"] }
    end
  end

  # Take lat/lng array and return a postal address
  def parse
    begin
      @location = { latitude: address_params[:latitude].to_f, longitude: address_params[:longitude].to_f }
      @addresses = Mapbox::Geocoder.geocode_reverse(@location)
      render template: "address_search/result"
    rescue StandardError
      render json: { errors: ["Unable to perform reverse geocoding"] }
    end
  end

  private

  def address_params
    params.permit(:a, :latitude, :longitude)
  end

  # json.array! @addresses

  # RSpec.describe "Address Search" do
  #   it "parses an address and returns latitude and longitude" do
  #     get "/api/v1/address_search/expand", params: { a: "401 B St, San Diego CA" }
  #     expect(response).to be_successful
  #   end

  #   it "parses latitude and longitude and returns an address" do
  #     get "/api/v1/address_search/parse", params: { longitude: 127.0, latitude: -43.64 }
  #     expect(response).to be_successful
  #   end
  # end
end
