if @rto.nil?
	node("error"){"#{params[:id]} not found"}
elsif @rto.valid?
	node(:message){"#{@rto.code} is updated"}
	node(:status){"200"}
else
	node(:error){"record not saved"}
	node(:reason){@rto.errors.full_messages}
end
