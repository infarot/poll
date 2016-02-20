class User < ActiveRecord::Base
  has_many :questions, :dependent => :destroy

  # notice this comes BEFORE the include statement below
  # also notice that :confirmable is not included in this block
  devise :database_authenticatable
end