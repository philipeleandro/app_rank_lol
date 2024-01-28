require 'rails_helper'

RSpec.describe Summoner do
  describe 'Create Summoner' do
    let(:instance) { described_class.new(params) }

    context 'when valid' do
      let(:params) {{ encrypted_summomner_id: 'test encrypted_summomner_id',
                      encrypted_account_id: 'test encrypted_account_id',
                      puuid: 'test puuid',
                      name: 'test name',
                      tag: 'test tag' }}

      it { expect(instance.valid?).to eq true}
    end

    context 'when is invalid' do
      let(:params) { nil }

      it { expect(instance.valid?).to eq false}
    end
  end
end
