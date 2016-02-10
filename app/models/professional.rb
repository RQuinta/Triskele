class Professional < ActiveRecord::Base

  belongs_to :professional_status
  has_many :services

  scope :by_sport, -> (sport) { where(sport_id: sport) }
  scope :by_name, -> (busca) { where("name LIKE '#{busca}%'").limit(6) }

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :cpf, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :passport, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

end