module Academy
  module OnboardingSteps
    class ReasonsController < OnboardingsController
      # GET /onboarding/reasons
      def reasons
        render 'academy/onboarding_steps/reasons/reasons.json'
      end

      # PATCH /onboarding/reasons
      def update_reasons
        reasons_step.update(params)
        session[:reasons] = reasons_step.reasons
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def reasons_step
        @reasons_step ||= Academy::Onboarding::Steps::Reasons.new(current_onboarding)
      end
    end
  end
end
