class CreateBarcharts < ActiveRecord::Migration
  def change
    create_table :barcharts do |t|
      t.string :nh_overall
      t.string :nl_overall
      t.string :nh_nyse
      t.string :nl_nyse
      t.string :nh_nasdaq
      t.string :nl_nasdaq
      t.string :nh_etfs
      t.string :nl_etfs
      t.string :nh_l10
      t.string :nl_l10
      t.string :nh_g100
      t.string :nl_g100
      t.string :nh_l100
      t.string :nl_l100
      t.date :quote_date

      t.timestamps
    end
  end
end
