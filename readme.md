Booking Appointment System:
  User Side:
    - Enhanced UI with booking calendar such as available slot’s time (hrs) on date.
    - can select doctors/services/trainers.
    - Can see available slots by date wise per (doctors/services/trainers).
    - Can book available slots by filling a form. (One Booking on Single Day).
    - Can cancel the appointment before locked time (i.e. user cannot cancel appointment before  (n) hours from schedule).
    - Automatically will receive confirmation email about the booking.
    - Must be login to submit the form.
  Admin Side:
    - create (doctors/services/trainers)
    - Can set the availability slots by date and time wise.
    - duration of meeting
    - can approved or cancel the appointment request
    - ON/OFF the visibility of appointment page through admin panel.
  Acceptance criteria:
    User side:
      Case Guest user:
        - Given i am a user want to make an appointment.
        - when i click on the link or visit the page by direct URL.
        - then it will redirect me to the login screen asking to either login or create an account.
      Case Logged in user:
        - Given i am a user want to make an appointment.
        - when i click on the link or visit the page by direct URL.
        - then it will show me the appointment page with list of all available (doctors/services/trainers) in DD.
        - then it will show me the calender view to choose the slot.
      Case No (doctors/services/trainers) selected:
        - Given i am a user want to make an appointment.
        - Given there is a DD of all available (doctors/services/trainers).
        - When i landed on the appointment page and don't select any trainer from DD.
        - then the calender wil not show any slot (just blank calendar).
      Case (doctors/services/trainers) selected:
        - Given i am a user want to make an appointment.
        - Given there is a DD of all available (doctors/services/trainers).
        - when i select any option(doctors/services/trainers) from DD.
        - then i can see all the availabe slots of that trainer in calender.
      Case change (doctors/services/trainers) selection:
        - Given i am a user want to make an appointment.
        - Given i was viewing the slots of a specific trainer.
        - when i chose a different trainer from DD.
        - then i should be able to view the available slots of newly selected trainer.
      Case select the slot:
        - Given i am a user want to make an appointment.
        - Given i was viewing the slots of a specific trainer.
        - When i click on a specific slot from calender.
        - then a modal will be popup on screen.
        - then that modal will show my slected trainer name and selected datetime with some form additional field (contact number*, additional note field).
        - then that modal will have submit and cancel buttons.
      Case Submit the appointment form:
        - Given i filled the appointment form.
        - when i hit submit button.
        - then it will redirect me to the confirmation page saying my request is in pending state and will receive a confirmation email.
        - then i should received an email have details of my selected values with the request status.
        - then email will also have a unique url to cancel my appointment.
      Case Cancelling appointment:
        - given i have received an email having cancellation url.
        - given i am cancelling the appointment within the time limiation.
        - when i click the url.
        - then it will reciret me to cancel appointment page.
      Case Confirm cancel appointment: 
        - given i am cancelling the appointment within the time limiation.
        - when i submit the cancellation form.
        - then it will redirect me to the cancellation confirmed page.
        - then i will receive an email confirming my appointment has been cancelled.
      Case Double Appoinment to same (doctors/services/trainers):
        - Given i already have a pending appointment to a specific trainer.
        - Given i am a user want to make an appointment.
        - Given i chose the exact same trainer from DD.
        - when i click on any available slot.
        - then a popup modal will appear saying you already have an appointment hence cannot make any additional Appoinment.
      Case Double Appoinment to different (doctors/services/trainers):
        - Given i already have a pending appointment to a specific trainer. 
        - Given i am a user want to make an appointment
        - Given i chose a different trainer from DD.
        - when i click on any available slot.
        - then it will let me continue with the appointment form.
    Admin side:
      Case Can disable
        - Given i am an admin user
        - Given i want to Disable Appointment management system.
        - Given there is a flag option in admin config
        - when i turn the flag off and save the config.
        - then it will hide Appointment management option on frontend.
        - then it will stop the background jobs if any.
