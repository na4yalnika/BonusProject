class User < ActiveRecord::Base
	has_many :sources, :through => :transactions
	has_many :targets, :through => :transactions

    has_secure_password

end
