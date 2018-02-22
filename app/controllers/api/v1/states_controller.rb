class Api::V1::StatesController < Api::V1::ApiController

  skip_before_action :verify_authenticity_token
  before_action :check_api_key


  def index
    @user = User.find_by(api_key: params[:api_key])
  	@states = State.all
  end

  def create
    #binding.pry
  	@state = State.new(state_params)
  	@state.save
  end

  def update
  	@state = State.find_by(code: params[:id].upcase)
  	if !@state.nil?
  		@state.update_attributes(state_params)
  	end
  end
  
  def show
  	@state = State.find_by(code: params[:id].upcase)
  end

  def destroy
  	@state = State.find_by(code: params[:id].upcase)
  	unless @state.nil?
  		@state.destroy
  	end
   end

   private
   def state_params
   	  params[:state].permit(:name, :code)
   	end

end
