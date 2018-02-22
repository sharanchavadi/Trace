if @state.nil?
	node("error"){"record not found"}
	node("status"){"404"}
else
    object @state
    attributes :name, :code
    node("status"){"200 ok"}
    #child :districts do
    #	attributes :id, :name
    #end

    child :rtos do
    	attributes :id, :code, :vehicle_number, :registration_office, :address, :phone_number
    end	
end