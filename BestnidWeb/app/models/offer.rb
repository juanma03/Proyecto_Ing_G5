class Offer < ActiveRecord::Base
	belongs_to :user
	belongs_to :publication

	validates_format_of :amount, :with => /\A[0-9.]{1,10}\Z/
	validates_presence_of :necessity
  	validates_format_of :security_code, :with => /\A[0-9.]{3}\Z/
end
