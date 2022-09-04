require_relative 'main'
require_relative 'formatter'
require_relative 'html_formatter'
require_relative 'plain_text_formatter'
require_relative 'report'

report = Report.new(HTMLFormatter.new)
report.output_report

## Text
report.formatter = PlainTextFormatter.new
report.output_report