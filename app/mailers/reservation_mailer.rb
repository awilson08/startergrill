class ReservationMailer < ActionMailer::Base
  default from: "reservations@startergrill.com"

  def new_reservation_email(user, reservation)
  	@user = user
  	@reservation = reservation
  	mail(:to => user.email, :subject => "You Have Created A New Reservation")
  end


end
