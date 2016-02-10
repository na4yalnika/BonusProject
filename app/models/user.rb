class User < ActiveRecord::Base
	has_many :sources, :through => :transactions
	has_many :targets, :through => :transactions
end
