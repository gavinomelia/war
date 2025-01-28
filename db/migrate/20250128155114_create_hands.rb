class CreateHands < ActiveRecord::Migration[8.0]
  def change
    create_table :hands do |t|
      t.timestamps
    end
  end
end
