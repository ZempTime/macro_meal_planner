class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals
  has_many :macro_requirements

  after_create :create_blank_macro_requirements


  def create_blank_macro_requirements
    macro_requirements.create(
      total_calories: 0,
      carbs: 0,
      fat: 0,
      protein: 0,
      fiber: 0
    )
  end
end
