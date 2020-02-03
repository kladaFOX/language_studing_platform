json.steps do
  json.partial! 'academy/onboarding_steps/shared/steps', steps: needed_steps(@current_onboarding, session)
end
