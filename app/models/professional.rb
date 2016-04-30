class Professional < ActiveRecord::Base

  has_secure_token
  has_secure_password :validations => false

  belongs_to :professional_status
  has_many :services

  scope :by_sport, -> (sport) { where(sport_id: sport) }
  scope :by_token, -> (token) { where(token: token) }
  scope :by_name, -> (busca) { where("name LIKE '#{busca}%'").limit(6) }
  scope :by_email, -> (email) { where(email: email) }

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :cpf, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :passport, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

end