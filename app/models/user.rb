class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :user_name,:email, :password, :password_confirmation, :remember_me
  validates_presence_of :first_name, :last_name, :user_name
  validates_uniqueness_of :user_name
end
