class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :reports
    has_many :usersubjects
	has_many :subjects, :through => :usersubjects
attr_reader :subject_tokens
def subject_tokens=(ids)
	self.subject_ids = ids.split(",")
	
end
end
