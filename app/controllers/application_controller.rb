require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params["team"]["name"], params["team"]["motto"])
      @super_heroes = params["team"]["members"].map do |member_params|
        SuperHero.new(member_params["name"], member_params["power"], member_params["bio"])
      end

      erb :team
    end

end
