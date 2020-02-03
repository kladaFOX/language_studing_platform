module Academy
  class Onboarding
    module Steps
      class Needs < Base
        attr_accessor :needs

        def update(params = {})
          self.needs = params[:needs] if params[:needs].present?
        end
      end
    end
  end
end
