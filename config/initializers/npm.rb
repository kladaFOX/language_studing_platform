if Rails.env.development? || Rails.env.test?
  system '(npm --prefix ./app/assets/javascripts install)'
end
