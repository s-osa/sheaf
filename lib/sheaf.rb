#coding:utf-8

require 'csv'

class Sheaf ; end

require 'sheaf/parser'

class Sheaf
  def self.create(filepath)
    case filepath
    when /.txt$/ then Sheaf::Parser::Amazon.new(filepath)
    else
      raise TypeError, "Invalid file type"
    end
  end
end
