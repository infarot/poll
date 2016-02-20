class QuestionSerializer < ActiveModel::Serializer
  attributes :question, :created_at, :creator_email, :url, :choices
  
  def creator_email
    object.user.email
  end
  
  def url
    "change me to return url"
  end
  
  def choices
    object.choices.map do |choice|
      ChoiceSerializer.new(choice)
    end
  end
end