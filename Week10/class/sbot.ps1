# Send an email using Powershell

$toSend = @('derek.bouvia@myamil.champlain.edu' , 'derek@champlain.edu' , 'bouvia@champlain.edu')

# Message body
$msg = "Hello"

while ($true) {
    foreach ($email in $toSend) {

        # Send the email
        write-host "Send-MailMessage - from 'derek.bouvia@mymail.champlain.edu' -To $email -Subject 'Tisk Tisk' `
        -Body $msg -SmtpServer x.x.x.x"

        # Pause for 1 second
        #start-sleep 1
    }


}