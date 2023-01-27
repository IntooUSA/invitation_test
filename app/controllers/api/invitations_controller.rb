class Api::UsersController < ApplicationController
    
    def index
    #   @invitations = Invitation.all
      first_name = params[:first_name] == "" || params[:first_name].nil? ? nil : params[:first_name]
      last_name = params[:last_name] == "" || params[:last_name].nil? ? nil : params[:last_name]
      email = params[:email] == "" || params[:email].nil? ? nil : params[:email]

      

      @invitations = !first_name.nil? ? Invitation.where("first_name = ?", params[:first_name]) : Invitation.all
      @invitations = !last_name.nil? ? Invitation.where("last_name = ?", params[:last_name]) : Invitation.all
      @invitations = !email.nil? ? Invitation.where("email = ?", params[:email]) : Invitation.all
      
      @invitations = Invitation.limit(20).offset(@page * 20)

      render "api/invitations/index"
    end

    def show
        @invitation = Invitation.find(params[:id])
        if @invitation
          render "api/invitations/show"
        else
          render json: @invitation.errors.full_messages, status: 404
        end
    end
  
    def update
        @invitation = Invitation.find_by(id: params[:id])
  
        if @invitation.update(invitation_params)
          render "api/invitations/show"
        else
          render json: @invitation.errors.full_messages, status: 422
        end
    end

    def line_chart
        @activated_frequency_hash = Hash.new(0)
        Invitation.all.each do |invitation|
            @activated_frequency_hash[invitation.datetime] += 1
        end
    end

    private

    def invitation_params
        params.require(:invitation).permit(
            :first_name,
            :last_name,
            :email            
        )
    end

end