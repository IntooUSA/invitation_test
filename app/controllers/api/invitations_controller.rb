class Api::UsersController < ApplicationController
    def index
        @invitation = Invitation.all
        render "api/invitations/index"
    end

    def show
        @invitation = Invitation.find(params[:id])
        if @invitation
            render "api/invitations/show"
        else
            render json: @invitation.errors.full_messages, status: 404
    end

    def update
        @invitation = Invitation.find_by(id: params[:id])
  
        if @invitation.update(invitation_params)
    
          render "api/invitations/show"
        else
          render json: @invitation.errors.full_messages, status: 422
        end
  
      end

end