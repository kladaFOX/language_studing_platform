module Academy
  class Language
    include Mongoid::Document

    field :name, type: String
    field :image, type: String
  end
end
