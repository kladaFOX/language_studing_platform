module Academy
  class Onboarding
    module Steps
      class Booking < Base
        attr_accessor :booking

        def update(params = {})
          self.booking = params[:booking] if params[:booking].present?
        end
      end
    end
  end
end
