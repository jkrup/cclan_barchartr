class CreateBarcharts < ActiveRecord::Migration
  def change
    create_table :barcharts do |t|
      t.string :nh-overall
      t.string :nl-overall
      t.string :nh-nyse
      t.string :nl-nyse
      t.string :nh-nasdaq
      t.string :nl-nasdaq
      t.string :nh-etfs
      t.string :nl-etfs
      t.string :nh-l10
      t.string :nl-l10
      t.string :nh-g100
      t.string :nl-g100
      t.string :nh-l100
      t.string :nl-l100
      t.date :quote_date

      t.timestamps
    end
  end
end
