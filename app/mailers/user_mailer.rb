class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #

  def invitation(tour, invitation)
    # set link_url that email recipient will click on, points to this tour_id
    @link = "rollcall.fun/tours/#{tour.id}"

    # set sender of email
    # from = "#{tour.user.name}@amir.com"


    # tour organizer name
    @sender = tour.user.name

    #test cases
    # to send to christophe
    # mail to: "christophe.ridarch@gmail.com", from: from
    from = "amir@rollcall.fun"
    mail to: "benjamin@benyas.com", from: from
  end
end
