class Day < ApplicationRecord
  belongs_to :user
  has_many :advices, dependent: :destroy
  has_many :links, through: :advices
  validates :date, :uniqueness => { :message => "- It seems that you already told me how you feel today. Click on today's date in the calendar if you would like to update that info." }
  serialize :emotion
  # validates :head_pain, presence: true
  # validates :abdominal_pain, presence: true
  # validates :breast_pain, presence: true
  # validates :bad_mood, presence: true

  def pain?
    head_pain || abdominal_pain || breast_pain
  end
end
