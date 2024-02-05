require
RSpec.describe BySummoner do 
    subject(:account) {describe_class.new(nick)}
    describe "#get_summoner_id" do 
        context "if return true" do
        let(:nick) {"Lyord"}
        it "if result true" do 
        expect (account.get_summoner_id).to eq("lgIpGDxoHwmwBDptQl6U3-jIafK71vICMa8_Z2M7GPMm6Q")
        end
        end
    end



end