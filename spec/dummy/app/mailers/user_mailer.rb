class UserMailer < ApplicationMailer
  def post
    mail(from: 'from@example.com',
         to: 'to@example.com',
         cc: 'cc@example.com',
         subject: 'this is subject',
         text: 'this is plain text',
         html: '<div>hogehoge</div>')
  end
end
