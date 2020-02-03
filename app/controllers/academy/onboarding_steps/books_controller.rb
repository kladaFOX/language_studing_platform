module Academy
  module OnboardingSteps
    class BooksController < OnboardingsController
      # GET /onboarding/books
      def books
        render 'academy/onboarding_steps/books/books.json'
      end

      # PATCH /onboarding/books
      def update_books
        books_step.update(params)
        session[:books] = books_step.books
        render 'academy/onboarding_steps/update_step.json'
      end

      private

      def books_step
        @books_step ||= Academy::Onboarding::Steps::Books.new(current_onboarding)
      end
    end
  end
end
