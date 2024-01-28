class Summoner < ApplicationRecord
  validates :encrypted_summomner_id, :encrypted_account_id, :puuid, :name, :tag,  :presence => true
end
