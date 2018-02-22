if @rto.valid?
   object @rto
   attributes :code, :vehicle_number, :registration_office, :address, :phone_number, :state_id, :district_id
   node(:status){"200"}
   node(:message){"ok"}
else
	node(:error){"Record not found"}
	node(:reason){@rto.errors.full_messages}
end
