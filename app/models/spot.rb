class Spot < ActiveRecord::Base
	belongs_to :user
	attr_accessible :title, :name, :notes, :payback_date, :amount

	validates :title, :presence => true;
	validates :name, :presence => true;
end