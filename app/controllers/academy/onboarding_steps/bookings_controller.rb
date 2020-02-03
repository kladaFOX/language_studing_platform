module Academy
  module OnboardingSteps
    class BookingsController < OnboardingsController
      # GET /onboarding/booking
      def booking
        render 'academy/onboarding_steps/bookings/booking.json'
      end

      # PATCH /onboarding/booking
      def update_booking
        booking_step.update(params)
        session[:booking] = booking_step.booking
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def booking_step
        @booking_step ||= Academy::Onboarding::Steps::Booking.new(current_onboarding)
      end
    end
  end
end
