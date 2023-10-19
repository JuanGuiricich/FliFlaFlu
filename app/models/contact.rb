class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attribute :message, validate: true

  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "My Contact Form",
      to: 'jguiricich@gmail.com',
      from: %("#{name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end
