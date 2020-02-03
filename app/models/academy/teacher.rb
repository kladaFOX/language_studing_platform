module Academy
  class Teacher < User
    include Mongoid::Document
    include ActiveModel::Validations

    embeds_many :teacher_experiences, :teacher_educations, :teacher_languages

    validates :first_name, :last_name, :sex, presence: true

    field :first_name, type: String
    field :middle_name, type: String
    field :last_name, type: String
    field :sex, type: String
    field :teaches, type: Array, default: []
    field :speaks, type: Array, default: []
  end


  class TeacherLanguage
    include Mongoid::Document

    embedded_in :teacher

    field :language, type: String
    field :levels, type: Array, default: []
  end


  class TeacherExperience
    include Mongoid::Document

    embedded_in :teacher

    field :position, type: String
    field :place_of_work, type: String
    field :date_of_beginning, type: Date
    field :date_of_end, type: Date
  end


  class TeacherEducation
    include Mongoid::Document

    embedded_in :teacher

    field :specialty, type: String
    field :place_of_study, type: String
  end
end
