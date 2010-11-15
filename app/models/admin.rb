class Admin
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :login
  validates_presence_of :login, :email
  validates_uniqueness_of :login, :email, :case_sensitive => false

  attr_accessible :login, :email, :password, :password_confirmation

end
