class AddAmexAndG10ColumnToBarchart < ActiveRecord::Migration
  def change
    add_column :barcharts, :nh_amex, :string
    add_column :barcharts, :nl_amex, :string
    add_column :barcharts, :nh_g10, :string
    add_column :barcharts, :nl_g10, :string
  end
end
