module Academy
  class Onboarding
    module Steps
      class Exam < Base
        attr_accessor :exam

        def update(params = {})
          self.exam = params[:exam] if params[:exam].present?
        end
      end
    end
  end
end
