class District < ActiveRecord::Base

	belongs_to :state
	has_many :rtos

	validates_presence_of :name, :state_id
end

=begin
Rto.create(code:"02", vehicle_number:"KL-02", registration_office:"Thiruvananthapuram", address:"The Regional Transport Officer ( RTO ), 
1st Floor, Transport Bhavan, East Fort, Thiruvananthapuram Fort, Thiruvananthapuram - 695023", phone_number:"91-471-2469223", district_id:2, state_id:2)
=end
