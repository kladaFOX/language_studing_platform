module Academy
  module OnboardingSteps
    class ExamsController < OnboardingsController
      # GET /onboarding/exam
      def exam
        render 'academy/onboarding_steps/exams/exam.json'
      end

      # PATCH /onboarding/exam
      def update_exam
        exam_step.update(params)
        session[:exam] = exam_step.exam
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def exam_step
        @exam_step ||= Academy::Onboarding::Steps::Exam.new(current_onboarding)
      end
    end
  end
end
