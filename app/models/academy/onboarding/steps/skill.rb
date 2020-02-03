module Academy
  class Onboarding
    module Steps
      class Skill < Base
        attr_accessor :skill

        def update(params = {})
          self.skill = params[:skill] if params[:skill].present?
        end
      end
    end
  end
end
