module Academy
  module OnboardingSteps
    class PlansController < OnboardingsController
      # GET /onboarding/plan
      def plan
        render 'academy/onboarding_steps/plans/plan.json'
      end

      # PATCH /onboarding/plan
      def update_plan
        plans_step.update(params)
        session[:plans] = plans_step.plan
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def plan_step
        @plan_step ||= Academy::Onboarding::Steps::Plan.new(current_onboarding)
      end
    end
  end
end
