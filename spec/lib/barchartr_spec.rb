require 'rails_helper'
require 'rake'
BarchartApp::Application.load_tasks

describe 'barchart_import' do
  it "inputs Data into Barchart" do
    expect { Rake::Task['barchart_import'].invoke }.to change{Barchart.count()}.from(0).to(1)
  end
end
