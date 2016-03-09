class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable
	has_many :transactions
	has_many :recipients, :through => :transactions
	belongs_to :team

# commented authentification
  # has_secure_password
	#
  # def admin? #method to determine if a user has the role of admin
  #     self.role == 'admin'
  # end

end
