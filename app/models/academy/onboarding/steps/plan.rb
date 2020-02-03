module Academy
  class Onboarding
    module Steps
      class Plan < Base
        attr_accessor :plan

        def update(params = {})
          self.plan = params[:plan] if params[:plan].present?
        end
      end
    end
  end
end
