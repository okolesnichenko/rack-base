require 'rack'
require 'json'

class Rackapp
  def call(env)
    ['200', {"Content-Type" => "application/json"}, [env.to_json]]
  end
end

Rack::Handler::WEBrick.run Rackapp.new
