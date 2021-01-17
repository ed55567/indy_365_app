class Api::MapsController < ApplicationController
  def geomap
    @services = Service.find(params[:id])

    respond_to do |format|
      format.json do
        render json: {
          type: "Feature",
          geometry: {
            type: "Point",
            coordinates: [@service.latitude, @service.longitude],
          },
          properties: {
            title: @service.name,
            :'marker-color' => "#00607d",
            :'marker-symbol' => "circle",
            :'marker-size' => "medium",
          },
        }.to_json
      end
    end
  end
end
