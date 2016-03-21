class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :party
      t.string :state
      t.string :current_office
      t.string :running_for
      t.string :photo_url
      t.date :elect_date
    end
  end
end
