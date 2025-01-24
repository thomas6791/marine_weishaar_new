class ContactMailer < ApplicationMailer
    default from: "contact@marine-weishaar.com"
    
    def contact_email
        @sender = params[:sender]
        @object = params[:object]
        @person = params[:person]
        @tel = params[:tel]
        @message = params[:message]
        mail(to: "hunckler.thomas@hotmail.fr")
        #@user = params[:user]
        #@url  = "http://example.com/login"
        #mail(to: @user.email, subject: "Welcome to My Awesome Site")
    end
end
