require 'bundler/setup'
Bundler.require
require "sinatra/activerecord"
require "date"
require 'rake'
require 'open-uri'
require 'net/http'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/development.sqlite3"
)

require_all 'app/models'
require_relative "../app/cli"
require_relative "../lib/getWeatherByAPI"

# ActiveRecord::Base.establish_connection(
#     :adapter => "sqlite3",
#     :database => "db/development.sqlite3"
# )

# require 'sqlite3'
# require_relative '../app/models/student'

# DB = {:conn => SQLite3::Database.new("db/development.sqlite3")}

# require_relative "../app/models/fee"
# require_relative "../app/models/feePayment"
# require_relative "../app/models/grade"
# require_relative "../app/models/salary"
# require_relative "../app/models/salaryPayment"
# require_relative "../app/models/student"
# require_relative "../app/models/teacher"

  