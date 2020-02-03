module Academy
  class Reason
    include Mongoid::Document

    field :name, type: String
    field :language, type: String
    field :image, type: String
  end
end
