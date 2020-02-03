json.steps do
  json.partial! 'academy/onboarding_steps/shared/steps', steps: needed_steps(@current_onboarding, session)
end

json.current do
  json.name controller.action_name
  json.items do
    json.array! Academy::Reason.where(language: session[:language]) do |item|
      json.name item.name
      json.image image_url(item.image)
    end
  end
end
