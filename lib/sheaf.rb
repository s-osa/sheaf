#coding:utf-8

require 'csv'

class Sheaf ; end

require 'sheaf/amazon'

class Sheaf
  def self.create(filepath)
    file = CSV.table(filepath, col_sep: filepath =~ /\.txt$/ ? "\t" : nil)
    case file.headers.first
    when /orderid/ then Sheaf::Amazon.new
    else
      raise TypeError, "Invalid file type"
    end
  end
end
