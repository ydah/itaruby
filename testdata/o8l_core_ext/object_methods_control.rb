# A project definition must win over the Object extension fallback.
# present? raises ArgumentError; presentt? raises NoMethodError.
class ReportOverride
  def present?(row)
    row
  end
end

report = ReportOverride.new
report.present?
report.presentt?
