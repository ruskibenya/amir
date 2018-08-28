class InvitationsController < ApplicationController
  def send_invitations
    @tour = Tour.find(params[:tour_id])
    @tour.group.invitations.each do |invitation|
      UserMailer.invitation(@tour, invitation).deliver_now
    end
    flash[:notice] = "Invitations sent to #{@tour.group.name}!"
    redirect_to user_path(current_user)
  end

  def accept
    @invitation = Invitation.find(params[:invitation_id])
    @tour = Tour.find(params[:tour_id])
  end
end
