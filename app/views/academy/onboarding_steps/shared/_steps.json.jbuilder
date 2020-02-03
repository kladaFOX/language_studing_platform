json.array! steps do |step|
  json.name step
  json.url send("onboarding_#{step}_path")
end
