class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :source
      t.date :quote_date
      t.string :fact_check_rating
      t.string :direct_quote
      t.references :poltician
    end
  end
end
