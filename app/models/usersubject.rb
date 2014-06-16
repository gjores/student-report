class Usersubject < ActiveRecord::Base
	attr_accessor :subject_ids
	belongs_to :user
	belongs_to :subject
end
