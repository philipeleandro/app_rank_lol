require 'rails_helper'

RSpec.describe RiotGames::Summoner::ByName do
  describe '#initialize' do
    it '#Define atributo' do
      summoner_name = "Lyord"
      by_name_instance = described_class.new(summoner_name)
      
      expect(by_name_instance.summoner_name).to eq(summoner_name)
    end
  end

  describe '#url' do
    it '#Retorna URl' do
      summoner_name = "Lyord"
      by_name_instance = described_class.new(summoner_name)

      expected_url = 'https://br1.api.riotgames.com/lol/summoner/v4/summoners/by-name/Lyord'

      expect(by_name_instance.url).to eq(expected_url)
    end
  end

  describe '#get' do
    it 'Retorna informações de url e token' do
      summoner_name = "Lyord"
      by_name_instance = described_class.new(summoner_name)

      allow(by_name_instance).to receive(:token).and_return('mocked_token')

      expect(HTTParty).to receive(:get).with(
        'https://br1.api.riotgames.com/lol/summoner/v4/summoners/by-name/Lyord',
        headers: { "X-Riot-Token": 'mocked_token' }
      )

      by_name_instance.get
    end
  end
end