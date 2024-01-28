module RiotGames
  class Base
    def initialize
    end

    def get
      HTTParty.get(url, headers: headers)
    end

    def headers
      {
        "X-Riot-Token": token
      }
    end

    def token
      Rails.application.credentials.riot.token
    end
  end
end