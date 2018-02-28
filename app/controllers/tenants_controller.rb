class TenantsController < ApplicationController
    def home
        @tennant = params[:tenant]

        render :template => params[:tenant] + "/home"
    end

    def page
        @tennant = params[:path].split('/')[0]

        render :template => params[:path]
    end
end
