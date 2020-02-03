module Academy
  class Onboarding
    module Steps
      class Language < Base
        attr_accessor :language
        
        def update(params = {})
          self.language = params[:language] if params[:language].present?
        end
      end
    end
  end
end
