class InvitationsController < ApplicationController
  def send_invitations
    @tour = Tour.find(params[:tour_id])
    @tour.group.invitations.each do |invitation|
      UserMailer.invitation(@tour, invitation).deliver_now
    end
  end
end
