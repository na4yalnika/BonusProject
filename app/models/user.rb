class User < ActiveRecord::Base
	has_many :sources, :through => :transactions
	has_many :targets, :through => :transactions

    has_secure_password

    def admin? #method to determine if a user has the role of admin
        self.role == 'admin' 
    end

end
