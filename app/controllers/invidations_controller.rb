class InvitationsController < ApplicationController
    before_action :find_invidation, only: [:show, :update]
    def index
        @invitations = Invitation.all
        render :index
    end

    def show
        render :show
    end

    def update
        render :show
    end

    def search
        query = "%#{params[:s]}%"
        @invitations_results = Invitation.where("first_name LIKE ?", query).or(Invitation.where("last_name LIKE ?," query)).or(Invitation.where("email LIKE ?", query))
        render :index
    end

    private
    def find_invidation
        @invitation = Invitation.find(params[:id])
    end

    def invitation_params
        params.require(:invitation).permit(:s)
    end

end