require 'rails_helper'

RSpec.describe RiotGames::League::BySummoner do
  describe '#initialize' do
    it '#Define atributo' do
      summoner_id = "lgIpGDxoHwmwBDptQl6U3-jIafK71vICMa8_Z2M7GPMm6Q"
      by_summoner_instance = described_class.new(summoner_id)
      
      expect(by_summoner_instance.summoner_id).to eq(summoner_id)
    end
  end

  describe '#url' do
    it '#Retorna URl' do
      summoner_id = "lgIpGDxoHwmwBDptQl6U3-jIafK71vICMa8_Z2M7GPMm6Q"
      by_summoner_instance = described_class.new(summoner_id)

      expected_url = 'https://br1.api.riotgames.com/lol/league/v4/entries/by-summoner/lgIpGDxoHwmwBDptQl6U3-jIafK71vICMa8_Z2M7GPMm6Q'
      
      expect(by_summoner_instance.url).to eq(expected_url)
    end
  end

  describe '#get' do

    it 'Retorna informações de url e token' do
      summoner_id = "lgIpGDxoHwmwBDptQl6U3-jIafK71vICMa8_Z2M7GPMm6Q"
      by_summoner_instance = described_class.new(summoner_id)

      allow(by_summoner_instance).to receive(:token).and_return('mocked_token')

      expect(HTTParty).to receive(:get).with(
        'https://br1.api.riotgames.com/lol/league/v4/entries/by-summoner/lgIpGDxoHwmwBDptQl6U3-jIafK71vICMa8_Z2M7GPMm6Q',
        headers: { "X-Riot-Token": 'mocked_token' }
      )

      by_summoner_instance.get
    end
  end
end