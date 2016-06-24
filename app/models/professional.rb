class Professional < ActiveRecord::Base

  has_many :services
  belongs_to :user
  has_many :acquisitions, through: :services

  validates :cpf, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :passport, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

end