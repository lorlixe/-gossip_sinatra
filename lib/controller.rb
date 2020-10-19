require 'gossip'



class ApplicationController < Sinatra::Base
 
  get '/' do
 	erb :index
  end

  get '/gossips/new/' do
 	erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    	puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
      puts "Salut, je suis dans le serveur"
      puts "Ceci est le contenu du hash params : #{params}"
      puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
      puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
      puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"

      redirect '/'
  end


  # post '/gossips/new/' do
  # 	Gossip.new("#{@author}", "#{@content}").save
  # end

end


