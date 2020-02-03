module Academy
  class Onboarding
    module Steps
      class Books < Base
        attr_accessor :books

        def update(params = {})
          self.books = params[:books] if params[:books].present?
        end
      end
    end
  end
end
