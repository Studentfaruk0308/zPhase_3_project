class Forecast < ActiveRecord::Base

    def display_forecast
      return ("UV Radiation: " + self.uv_radiation + " / Solar Radiation: " + self.solar_radiation + " / Temperature: " + self.temperature + " / Wind Direction: " + self.wind_direction + " / Clouds: " + self.clouds + " / Visibility: " + self.visibility + " / Station Code: " + self.station_code)

      # " / Snow: " + self.snow + 
      # "Precipitation: " + self.precipitation + 

      # t.string "precipitation"
      # t.string "uv_radiation"
      # t.string "solar_radiation"
      # t.string "temperature"
      # t.string "wind_direction"
      # t.string "wind_speed"
      # t.string "clouds"
      # t.string "snow"
      # t.string "visibility"
      # t.string "station_code"

    end

  end

  