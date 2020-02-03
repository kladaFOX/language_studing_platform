module Academy
  class Student < User
    include Mongoid::Document
    include ActiveModel::Validations

    validates :first_name, :last_name, :sex, presence: true

    field :first_name, type: String
    field :middle_name, type: String
    field :last_name, type: String
    field :sex, type: String
    field :languages_level, type: Array, default: []
