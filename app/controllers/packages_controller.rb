class PackagesController < ApplicationController
    def create
        @courier = Courier.find(params[:courier_id])
        @package = @courier.packages.create(package_params)
        redirect_to courier_path(@courier)
    end
    
    private
        def package_params
            params.require(:package).permit(:tracking_number, :delivery_status)
        end   
end
