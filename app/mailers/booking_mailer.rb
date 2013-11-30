class BookingMailer < ActionMailer::Base
  default from: "no-reply@hotelsafter8.com"

  def send_booking_to_staff(booking)
    @booking = booking
    mail(to: "FILL_IN_WITH_TEAM_EMAIL@FIXME.COM", subject: "Some one made a booking")
  end
end
