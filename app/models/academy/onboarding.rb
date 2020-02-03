module Academy
  class Onboarding
    attr_reader :user

    def initialize(user = nil)
      @user = user
    end

    def steps
      # TODO: move steps to config
      Array.new(%w(language reasons skill books needs exam plan booking))
    end

    def start_as(user)
      unless user == :guest
        @user = user
      end
    end
  end
end
