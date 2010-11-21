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

  before_create :create_first_pseud
  def create_first_pseud
    self.pseuds.build(:name => self.login, :default => true)
  end

  def make_default(pseud_id)
    old = self.default_pseud
    old.default = false if old
    new = self.pseuds.criteria.id(pseud_id).first
    new.default = true
  end

  # convenience method
  def default_pseud
    self.pseuds.where(:default => true).first
  end
end
