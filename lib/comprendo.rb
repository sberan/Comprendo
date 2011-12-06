require 'rubygems'
require 'polyglot'
require 'treetop'
require 'list_comprehension'

module Comprendo

  def `(cmp)
    @parser ||= ListComprehensionParser.new
    results = @parser.parse(cmp)
    throw parser.failure_reason unless results
    
    iter = eval(results.iter.text_value)
    unless results.filter.type.empty?
      iter = iter.select do |a|
        eval(results.target.text_value + " = a")
        eval("true " + results.filter.text_value)
      end
    end
    
    iter.map do |a|
      eval(results.target.text_value + " = a")
      eval(results.expression.text_value)
    end
  end
end
