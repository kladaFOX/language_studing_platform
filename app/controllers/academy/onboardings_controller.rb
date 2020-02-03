module Academy
  class OnboardingsController < ApplicationController
    skip_before_action :verify_authenticity_token
    respond_to :json, :html
    layout :onboarding_layout
    before_action :set_onboarding_user

    def index
    end

    private

    def current_onboarding
      @current_onboarding ||= Academy::Onboarding.new(current_user)
    end

    def onboarding_layout
      request.xhr? ? false : 'academy/onboarding'
    end

    def set_onboarding_user
      if current_user
        current_onboarding.start_as(current_user)
      else
        current_onboarding.start_as(:guest)
      end
    end
  end
end
