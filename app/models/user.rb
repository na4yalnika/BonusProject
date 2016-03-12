class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable
	has_many :transactions
	has_many :recipients, :through => :transactions
	belongs_to :team
  validates_presence_of :first_name, :last_name

end
