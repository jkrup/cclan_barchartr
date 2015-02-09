require 'nokogiri'
require 'open-uri'

module Barchartr
  def download_doc(url)
    @@doc = Nokogiri::HTML(open(url))
  end

  def extract_value(doc)
    #imports the values from @@doc
    highs = doc.css(".mpbox tr")[7].content #12-Month Highs 219\n120\n3\n96\n65\n1\n18\n201\n28\n191\n
    lows = doc.css(".mpbox tr")[8].content #12-Month Lows 45\n14\n3\n28\n25\nN/A\n31\n14\n15\n30\n

    high_vals = highs.split("12-Month Highs ")[1].split("\n") 
    ## ["219", "120", "3", "96", "65", "1", "18", "201", "28", "191"]
    #high_vals = ["219", "120", "3", "96", "65", "1", "18", "201", "28", "191"]

    low_vals = lows.split("12-Month Lows ")[1].split("\n") 
    ##["45", "14", "3", "28", "25", "N/A", "31", "14", "15", "30"]
    low_vals = ["45", "14", "3", "28", "25", "N/A", "31", "14", "15", "30"]
    

    #You may want to make a third method here def import_values(highs,lows)
    #Then you can check if extract_values returns arrays of length 10

    nh_overall = high_vals[0]
    nl_overall = low_vals[0]

    nh_nyse = high_vals[1]
    nl_nyse = low_vals[1]

    nh_amex = high_vals[2]
    nl_amex = low_vals[2]

    nh_nasdaq = high_vals[3]
    nl_nasdaq = low_vals[3]

    nh_etfs = high_vals[4]
    nl_etfs = low_vals[4]

    nh_l10 = high_vals[6]
    nl_l10 = low_vals[6]

    nh_g10 = high_vals[7]
    nl_g10 = low_vals[7]

    nh_g100 = high_vals[8]
    nl_g100 = low_vals[8]

    nh_l100 = high_vals[9]
    nl_l100 = low_vals[9]

    b = Barchart.new({
      nh_overall: nh_overall,
      nl_overall: nl_overall,
      nh_nyse: nh_nyse,
      nl_nyse: nl_nyse,
      nh_amex: nh_amex,
      nl_amex: nl_amex,
      nh_nasdaq: nh_nasdaq,
      nl_nasdaq: nl_nasdaq,
      nh_etfs: nh_etfs,
      nl_etfs: nl_etfs,
      nh_l10: nh_l10,
      nl_l10: nl_l10,
      nh_g10: nh_g10,
      nl_g10: nl_g10,
      nh_g100: nh_g100,
      nl_g100: nl_g100,
      nh_l100: nh_l100,
      nl_l100: nl_l100,
      quote_date: DateTime.now()
    })

    b.save
  end

end

desc "Import data from barchart.com into Barchart model"
task :barchart_import => :environment do 
  include Barchartr
  doc = Barchartr.download_doc("http://www.barchart.com/stocks/newhilo.php?dwm=")
  Barchartr.extract_value(doc)
end

