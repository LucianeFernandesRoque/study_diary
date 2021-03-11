class StudyItem < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy   #n --1
  validates :title, presence: { message: 'não pode ficar em branco' }
  def checked?
    check_date.present?
  end

  def late?
    deadline < Date.current { message 'atrasado'}
  end
end
