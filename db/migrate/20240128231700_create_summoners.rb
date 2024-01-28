class CreateSummoners < ActiveRecord::Migration[7.1]
  def change
    create_table :summoners do |t|
      t.string :encrypted_summomner_id
      t.string :encrypted_account_id
      t.string :puuid
      t.string :name
      t.string :tag

      t.timestamps
    end
  end
end
