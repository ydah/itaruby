# Object extensions supplied by ActiveSupport; to_yaml comes from Psych.
# Run with: ruby -ractive_support/all -ryaml object_methods.rb
class Report
  def initialize(rows)
    @rows = rows
  end

  def export
    blank?
    present?
    presence
    in?([self])
    as_json
    deep_dup
    to_param
    instance_variable_names
    to_yaml
  end
end

report = Report.new([])
report.blank?
report.present?
report.presence
report.in?([report])
report.as_json
report.deep_dup
report.to_param
report.instance_variable_names
report.to_yaml
report.export
