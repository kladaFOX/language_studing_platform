module Academy
  class OnboardingOptionsSeeds
    LANGUAGES = {
      'french' => 'french.png',
      'arabic' => 'arabic.png'
    }
    REASONS = {
            'french' => {
                         'DELF / DALF exam' => 'defl-dalf-exam.png',
                         'Business / Work' => 'business.png',
                         'Personal study' => 'personal-study.png',
                         'Living in France' => 'live-in-france.png',
                         'Student in France' => 'student-in-france.png',
                         'Hobby' => 'hobby.png',
                         'Emigrating to Canada' => 'move-to-canada.png',
                         'Other reason' => 'other.png'
                        },
            'arabic' => {
                         'Student in Middle East Countries' => 'student-in-france.png',
                         'Hobby' => 'hobby.png',
                         'Emigrating to Middle East Countries' => 'move-to-canada.png',
                         'Other reason' => 'other.png'
                        }
          }

    def perform
      puts 'Adding onboarding options...'

      LANGUAGES.each do |name, image|
        Academy::Language.create!(name: name, image: image)
      end

      REASONS.each do |language, value|
        value.each do |reason, image|
          Academy::Reason.create!(name: reason, language: language, image: image)
        end
      end
    end
  end
end
