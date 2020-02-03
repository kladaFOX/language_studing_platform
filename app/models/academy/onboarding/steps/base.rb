module Academy
  class Onboarding
    module Steps
      class Base
        attr_reader :onboarding

        delegate :user, to: :onboarding, allow_nil: true

        def initialize(onboarding)
          @onboarding = onboarding
        end

        def update(params = {})
          raise(NotImplementedError, "#{self.class} must implement the #update method")
        end
      end
    end
  end
end
