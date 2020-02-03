module Academy
  module OnboardingSteps
    class NeedsController < OnboardingsController
      # GET /onboarding/needs
      def needs
        render 'academy/onboarding_steps/needs/needs.json'
      end

      # PATCH /onboarding/needs
      def update_needs
        needs_step.update(params)
        session[:needs] = needs_step.needs
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def needs_step
        @needs_step ||= Academy::Onboarding::Steps::Needs.new(current_onboarding)
      end
    end
  end
end
