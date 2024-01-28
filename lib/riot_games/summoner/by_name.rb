module RiotGames
  module Summoner
    class ByName < Base
      attr_accessor :summoner_name

      URL = 'https://br1.api.riotgames.com/lol/summoner/v4/summoners/by-name'

      def initialize(summoner_name)
        super()
        @summoner_name = summoner_name
      end

      def url
        "#{URL}/#{summoner_name}"
      end
    end
  end
end