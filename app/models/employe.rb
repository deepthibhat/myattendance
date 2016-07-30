class Employe < ActiveRecord::Base
  has_many :attendances
  before_save {self.email = email.downcase }
  validates :name, presence: true, lenght: {minimum: 3, maximum: 50 }
  validates :address, presence: true, lenght: {minimum: 10, maximum: 200 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i
  validates :email, presence: true, lenght: { maximum: 105},
                                    uniqueness: { case_sensitive: false},
                                    format: {with: VALID_EMAIL_REGEX}
  has_secure_password
end
