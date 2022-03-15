class UserMailer < ApplicationMailer
    default from: 'from@example.com'

    def welcome_email(user)
        @user = user
        @url = "http://localhost:3000/users"
        mail(to: user.username, subject: '99 Cats Rental Service')
    end
end
