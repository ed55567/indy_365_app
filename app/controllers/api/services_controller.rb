class Api::ServicesController < ApplicationController
  def index
    @services = Service.all
    render "index.json.jb"
  end
end
