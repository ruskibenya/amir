class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invitation.subject
  #

  def invitation(tour, invitation)

    # set link_url that email recipient will click on, points to this tour_id
    @link = accept_invitation_url(invitation_id: invitation.id, tour_id: tour.id)

    @tour = tour
    # set sender of email
    from = "#{tour.user.name}@rollcall.fun"

    # tour organizer name
    @sender = tour.user.name

    # if we end up using invitation status
    # invitation.status = "sent"
    @tour_name = @tour.name.upcase
    @recipient = invitation.email.split('@')[0].upcase

    #attach images to email
    attachments.inline['backpack'] = File.read('public/backpack.png')
    attachments.inline['cinqueterre'] = File.read('public/cinqueterre.jpg')


    mail to: invitation.email, from: from
    #test cases
    # to send to christophe
    # mail to: "christophe.ridarch@gmail.com", from: from
    # to send to ben
    #mail to: "benjamin@benyas.com", from: from
  end
end

# ActionController::Base.helpers.asset_path('missing_file.jpg')
