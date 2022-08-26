# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateForecasts < ActiveRecord::Migration[6.0]
    def change
      create_table :forecasts do |t|
        t.string :precipitation
        t.string :uv_radiation
        t.string :solar_radiation
        t.string :temperature
        t.string :wind_direction
        t.string :wind_speed
        t.string :clouds
        t.string :snow
        t.string :visibility
        t.string :station_code
        t.datetime :date_time_forecast
        t.timestamps
      end
    end
  end