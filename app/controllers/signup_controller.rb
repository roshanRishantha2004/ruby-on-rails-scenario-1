class SignupController < ApplicationController
    def signup
      @customer = Customer.new
    end
  
    def create
       @customer = Customer.new(customer_params)
       if @customer.save
        session[:customer_id] = @customer.id
        redirect_to about_path, notice: 'Logged'
       else 
        render :signup
       end
    end

    private

    def customer_params
        params.require(:customer).permit(:email, :password, :password_confirmation)
    end
end
  