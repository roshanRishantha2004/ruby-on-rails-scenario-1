class AboutController < ApplicationController

    def index
        if session[:customer_id]
            @customer = Customer.find_by(id: session[:customer_id])
          end
          
    end

end
