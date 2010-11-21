class Pseud
  include Mongoid::Document
  field :name
  field :default, :type => Boolean
  validates_presence_of :name

  embedded_in :user, :inverse_of => :pseud

end
