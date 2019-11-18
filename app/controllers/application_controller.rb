require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

        get '/' do 
            erb :index
        end

        post "/team" do
            # team = params[:team]
            # @team = team.collect do |details|
            #     Team.new({name: details[:name], motto: details[:motto]})
            # end

             @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
             
             members = params[:team][:members]
            @heroes = members.collect do |member_params|
              SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
            end
        erb :team
    end

end
