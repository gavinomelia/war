class AddSuiteAndRankToCards < ActiveRecord::Migration[8.0]
  def change
    add_column :cards, :suite, :string
    add_column :cards, :rank, :string
  end
end
