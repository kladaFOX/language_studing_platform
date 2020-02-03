module Academy
  class Onboarding
    module Steps
      class Reasons < Base
        attr_accessor :reasons

        def update(params = {})
          self.reasons = params[:reasons] if params[:reasons].present?
        end
      end
    end
  end
end
