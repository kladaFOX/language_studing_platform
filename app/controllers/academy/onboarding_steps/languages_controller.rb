module Academy
  module OnboardingSteps
    class LanguagesController < OnboardingsController
      # GET /onboarding/language
      def language
        render 'academy/onboarding_steps/languages/language.json'
      end

      # PATCH /onboarding/language
      def update_language
        languages_step.update(params)
        session[:language] = languages_step.language
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def languages_step
        @languages_step ||= Academy::Onboarding::Steps::Language.new(current_onboarding)
      end
    end
  end
end
