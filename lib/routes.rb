# require "httparty"

# nick = "Lyord"
# headers = {"X-Riot-Token": "RGAPI-c98e8c27-22bb-4a18-b9dc-97962017ed3a"}
# url_summoner = "https://br1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{nick}"
# summoner_id = HTTParty.get(url_summoner, headers: headers)

# id = summoner_id["id"]
# url_leaguev4 = "https://br1.api.riotgames.com/lol/league/v4/entries/by-summoner/#{id}"
# leaguev4 = HTTParty.get(url_leaguev4, headers: headers)



require "httparty"

class Account
  def initialize(token)
    @headers = {"X-Riot-Token": token}
  end

  def get_summoner_id(nick)
    url_summoner = "https://br1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{nick}"
    summoner_id = HTTParty.get(url_summoner, headers: @headers)
    summoner_id["id"]
  end

  def summoner(nick)
    url_summoner = "https://br1.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{nick}"
    summoner = HTTParty.get(url_summoner, headers: @headers)
    summoner
  end

  def get_leaguev4(summoner_id)
    url_leaguev4 = "https://br1.api.riotgames.com/lol/league/v4/entries/by-summoner/#{summoner_id}"
    leaguev4 = HTTParty.get(url_leaguev4, headers: @headers)
    leaguev4
  end
end

token = "RGAPI-c98e8c27-22bb-4a18-b9dc-97962017ed3a"
account = Account.new(token)

nick = "Lyord"
summoner = account.summoner(nick)
summoner_id = account.get_summoner_id(nick)
leaguev4 = account.get_leaguev4(summoner_id)

puts "Summoner ID: #{summoner_id}"
puts "Summoner: #{summoner}"
puts "League Info: #{leaguev4}"
