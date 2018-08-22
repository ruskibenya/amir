class InvitationsController < ApplicationController
  def send_invitations
    @tour = Tour.find(params[:tour_id])
    @tour.group.invitations.each do |invitation|
      UserMailer.invitation(@tour, invitation).deliver_now
    end
    flash[:invitations_sent] = "Sent!"
    redirect_to tours_path(@tour)
  end

  def accept
    @invitation = Invitation.find(params[:invitation_id])
    @tour = Tour.find(params[:tour_id])
  end
end
