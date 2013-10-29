class Advisor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
         :username, :program, :country, :gmat_total, :gmat_quant, :gmat_verb,
         :undergrad, :gpa, :industry1, :industry2, :industry3

  validates :username, presence: true, uniqueness: true, format: { with: /^[a-zA-Z0-9_-]+$/, message: 'Must be formatted correctly' }
  validates :program, presence: true
 
end
