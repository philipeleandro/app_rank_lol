module RiotGames
  module League
    class BySummoner < Base
      attr_accessor :summoner_id

      URL = "https://br1.api.riotgames.com/lol/league/v4/entries/by-summoner"

      def initialize(summoner_id)
        super()
        @summoner_id = summoner_id
      end

      def url
        "#{URL}/#{summoner_id}"
      end
    end
  end
end
