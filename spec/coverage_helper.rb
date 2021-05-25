# frozen_string_literal: true

require 'simplecov'
# require 'simplecov_json_formatter'

# require 'simplecov-lcov'
# require 'simplecov-json'

# require 'simplecov-cobertura'

# SimpleCov.formatter =

# SimpleCov::Formatter::LcovFormatter.config do |c|
#   c.report_with_single_file = true
#   c.single_report_path = 'coverage/lcov.info'
# end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 SimpleCov::Formatter::HTMLFormatter
                                                                 #  SimpleCov::Formatter::LcovFormatter,
                                                                 #  SimpleCov::Formatter::JSONFormatter,
                                                                 #  SimpleCov::Formatter::SimpleFormatter

                                                                 #  SimpleCov::Formatter::CoberturaFormatter
                                                               ])

#  require 'simplecov'
#  require 'simplecov_json_formatter'

#  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
#    [
#      SimpleCov::Formatter::HTMLFormatter,
#      SimpleCov::Formatter::JSONFormatter,
#      SimpleCov::Formatter::SimpleFormatter
#    ]
#  )
# SimpleCov.minimum_coverage 80
# SimpleCov.maximum_coverage_drop 25
# SimpleCov.start 'rails' do
#   track_files '{app,lib}/**/*.rb'
#   coverage_dir 'coverage'
#   enable_coverage :branch
# end

SimpleCov.start 'rails'
