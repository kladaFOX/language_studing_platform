Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, class_name: 'Academy::User',
  controllers: { sessions: 'academy/users/sessions', registrations: 'academy/users/registrations' }
  
  get   'onboarding',          to: 'academy/onboardings#index'

  get   'onboarding/language', to: 'academy/onboarding_steps/languages#language'
  patch 'onboarding/language', to: 'academy/onboarding_steps/languages#update_language'

  get   'onboarding/reasons',  to: 'academy/onboarding_steps/reasons#reasons'
  patch 'onboarding/reasons',  to: 'academy/onboarding_steps/reasons#update_reasons'

  get   'onboarding/skill',    to: 'academy/onboarding_steps/skills#skill'
  patch 'onboarding/skill',    to: 'academy/onboarding_steps/skills#update_skill'

  get   'onboarding/books',    to: 'academy/onboarding_steps/books#books'
  patch 'onboarding/books',    to: 'academy/onboarding_steps/books#update_books'

  get   'onboarding/needs',    to: 'academy/onboarding_steps/needs#needs'
  patch 'onboarding/needs',    to: 'academy/onboarding_steps/needs#update_needs'

  get   'onboarding/exam',     to: 'academy/onboarding_steps/exams#exam'
  patch 'onboarding/exam',     to: 'academy/onboarding_steps/exams#update_exam'

  get   'onboarding/plan',     to: 'academy/onboarding_steps/plans#plan'
  patch 'onboarding/plan',     to: 'academy/onboarding_steps/plans#update_plan'

  get   'onboarding/booking',  to: 'academy/onboarding_steps/bookings#booking'
  patch 'onboarding/booking',  to: 'academy/onboarding_steps/bookings#update_booking'
end
