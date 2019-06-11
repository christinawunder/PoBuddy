class Day < ApplicationRecord
  belongs_to :user
  has_many :advices, dependent: :destroy
  has_many :links, through: :advices
  validates :date, :uniqueness => { :message => " seems like it has already been taken. Pick another day, or click on this day, delete its data and enter new infos" }
  serialize :emotion
  # validates :head_pain, presence: true
  # validates :abdominal_pain, presence: true
  # validates :breast_pain, presence: true
  # validates :bad_mood, presence: true

  def pain?
    head_pain || abdominal_pain || breast_pain
  end
end
