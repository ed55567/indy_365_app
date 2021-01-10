class Api::RequestsController < ApplicationController
  def create
    @request = Request.new(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
      phone: params[:phone],
      address: params[:address],
      city: params[:city],
      zipcode: params[:zipcode],
      servicetype: params[:servicetype],
      description: params[:description],
    )
    @request.save!
    render "show.json.jb"
  end
end
