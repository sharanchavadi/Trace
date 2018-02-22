if @rto.nil?
	node("error"){"#{params[:id]} record not found"} 
else
	node("message"){"#{@rto.vehicle_number} id deleted"}
	node("status"){"200"}
end
