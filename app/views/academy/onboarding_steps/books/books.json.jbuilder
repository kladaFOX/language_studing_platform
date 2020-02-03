json.steps do
  json.partial! 'academy/onboarding_steps/shared/steps', steps: needed_steps(@current_onboarding, session)
end

json.current do
  json.name controller.action_name

  json.items do
    json.array! [ 
                  { value: "redelf", label: "Réussir le DELF / DALF" },
                  { value: "abcdelf", label: "ABC DELF / DALF" }
                ] do |item|
      json.value item[:value]
      json.label item[:label]
    end
  end
end
