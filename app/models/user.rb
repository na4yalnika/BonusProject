class User < ActiveRecord::Base
	has_many :transactions
	has_many :recipients, :through => :transactions
	belongs_to :team

  has_secure_password

  def admin? #method to determine if a user has the role of admin
      self.role == 'admin'
  end

end
