class Day < ApplicationRecord
  belongs_to :user
  has_many :advices, dependent: :destroy
  has_many :links, through: :advices
  validates :date, uniqueness: true
  serialize :emotion

  def pain?
    head_pain || abdominal_pain || breast_pain
  end
end
