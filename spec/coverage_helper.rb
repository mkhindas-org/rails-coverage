# frozen_string_literal: true

require 'simplecov'
# require 'simplecov-lcov'
require 'simplecov-cobertura'

# SimpleCov.formatter =

# SimpleCov::Formatter::LcovFormatter.config do |c|
#   c.report_with_single_file = true
#   c.single_report_path = 'coverage/lcov.info'
# end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 SimpleCov::Formatter::HTMLFormatter,
                                                                 #  SimpleCov::Formatter::LcovFormatter
                                                                 SimpleCov::Formatter::CoberturaFormatter
                                                               ])

SimpleCov.start 'rails'
