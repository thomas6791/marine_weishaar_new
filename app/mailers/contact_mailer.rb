class ContactMailer < ApplicationMailer
    default from: "contact@marine-weishaar.com"
    
    def contact_email
        #@user = params[:user]
        #@url  = "http://example.com/login"
        #mail(to: @user.email, subject: "Welcome to My Awesome Site")
    end
end
