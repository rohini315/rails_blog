class User < ActiveRecord::Base
	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates_presence_of :username
	has_many :posts
end
