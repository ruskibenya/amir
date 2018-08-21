class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #

  # TODO pass in group so for each group sends an invitation
  def invitation(tour, invitation)
    # set link_url that email recipient will click on, points to this tour_id
    @link = "localhost:3000/tours/tour.id"

    # set sender of email
    # from = "#{tour.user.name}@amir.com"
    from = "benjamin@benyas.com"

    # just their name
    @sender = tour.user.name
    # iterate over each email in the invitation
    # send email to each member address
    # mail to: invitation.email, from: from

    # to send to christophe
    # mail to: "christophe.ridarch@gmail.com", from: from
    mail to: "benjamin@benyas.com", from: from
  end
end
