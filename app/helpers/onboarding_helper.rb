module OnboardingHelper
  # TODO: refactor code
  def needed_steps(onboarding, session)
    if session[:reasons].nil?
      onboarding.steps.reject{ |step| step == 'exam' }
    elsif session[:reasons] == 'DELF / DALF exam'
      onboarding.steps
    else
      onboarding.steps.reject{ |step| step == 'exam' }
    end
  end
end
