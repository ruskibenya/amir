class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #

  def invitation(tour, invitation)

    # set link_url that email recipient will click on, points to this tour_id
    @link = accept_invitation_url(invitation_id: invitation.id, tour_id: tour.id)

    # set sender of email
    from = "#{tour.user.name}@rollcall.fun"

    # tour organizer name
    @sender = tour.user.name

    # if we end up using invitation status
    # invitation.status = "sent"

    mail to: invitation.email, from: from
    #test cases
    # to send to christophe
    # mail to: "christophe.ridarch@gmail.com", from: from
    # to send to ben
    #mail to: "benjamin@benyas.com", from: from
  end
end
