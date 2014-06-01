json.array!(@reports) do |report|
  json.extract! report, :id, :reason, :teacher_experience, :student_experience, :updated_at, :updated
  json.url report_url(report, format: :json)
end
