class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :analysed_photos, :markers
  has_many :analysed_photos
  has_many :markers

  class AnalysedPhotoSerializer < ActiveModel::Serializer
    attributes :id, :photoUri, :labels
  end

end
