#coding:utf-8

class Sheaf::Parser::Amazon < Sheaf::Parser
  def initialize(filepath)
    @csv = CSV.read(filepath, "r:windows-31j", col_sep: "\t", headers: true)
    @csv.each do |row|
      row.each{|col| p col}
    end
  end

  attr_reader :csv
end
