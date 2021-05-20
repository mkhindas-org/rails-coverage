# frozen_string_literal: true

require 'simplecov'
require 'simplecov-lcov'
# require 'simplecov-cobertura'

# SimpleCov.formatter =

SimpleCov::Formatter::LcovFormatter.config do |c|
  c.report_with_single_file = true
  c.single_report_path = 'coverage/lcov.info'
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 SimpleCov::Formatter::HTMLFormatter,
                                                                 SimpleCov::Formatter::LcovFormatter
                                                                 #  SimpleCov::Formatter::CoberturaFormatter
                                                               ])

# SimpleCov.minimum_coverage 80
# SimpleCov.maximum_coverage_drop 25
SimpleCov.start 'rails' do
  track_files '{app,lib}/**/*.rb'
  coverage_dir 'coverage'
  enable_coverage :branch
end
