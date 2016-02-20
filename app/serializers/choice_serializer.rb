class ChoiceSerializer < ActiveModel::Serializer
  attributes :choice, :votes, :url
  
  def url
    "change me to return url"
  end
  
end