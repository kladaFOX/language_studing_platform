module Academy
  module OnboardingSteps
    class SkillsController < OnboardingsController
      # GET /onboarding/skill
      def skill
        render 'academy/onboarding_steps/skills/skill.json'
      end

      # PATCH /onboarding/skill
      def update_skill
        skill_step.update(params)
        session[:skill] = skill_step.skill
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def skill_step
        @skill_step ||= Academy::Onboarding::Steps::Skill.new(current_onboarding)
      end
    end
  end
end
