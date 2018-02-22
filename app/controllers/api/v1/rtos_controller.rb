class Api::V1::RtosController < ApplicationController

   skip_before_action :verify_authenticity_token

   def index
     @rtos = Rto.all
   end

   def show
    @rto = Rto.find_by(vehicle_number: params[:id].upcase)
   end

   def create
   	@rto = Rto.new(rto_params)
   	@rto.save
   end

   def update
   	@rto = Rto.find_by(vehicle_number: params[:id].upcase)
   	if !@rto.nil?
   	  @rto.update_attributes(rto_params)
   	end
   end

   def destroy
   	@rto = Rto.find_by(vehicle_number: params[:id].upcase)
   	unless @rto.nil?
   	   @rto.destroy
   	end
   end
   
   private
   def rto_params
   	 params[:rto].permit(:code, :vehicle_number, :registration_office, :address, :phone_number, :state_id, :district_id)
    end

end