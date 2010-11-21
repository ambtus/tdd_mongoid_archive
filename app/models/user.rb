class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :login
  attr_accessible :login, :email, :password, :password_confirmation
  validates_presence_of :login, :email
  validates_uniqueness_of :login, :email, :case_sensitive => false

  embeds_many :pseuds

  before_save :ensure_default_pseud

  def ensure_default_pseud
    self.pseuds.create(:default => true, :name => self.login) if
      self.pseuds.where(:default => true).count == 0
  end

end
