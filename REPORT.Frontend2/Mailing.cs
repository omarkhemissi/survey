using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;

namespace REPORT.Frontend
{
    public class Mailing
    {
        string MailTo = "khemissi@gmail.com";
        string sHTML = "";
        public Mailing()
        {
            sHTML += "<!DOCTYPE html><html><head>	<title>test</title>	<style>div.new-login-form {margin-top:15px;width:670px}";
            sHTML += "div.form-item {color:#848d95;background:#f9f9f9;border:1px solid #d4d4d4;box-shadow:-1px 1px #f2f2f2;";
            sHTML += "padding:7px 10px 9px;}div.form-item label{color:inherit;margin-top:3px;display:block;font-weight:bold;";
            sHTML += "padding-bottom:3px;}</style></head><body ><div class=\"new- login - form\"><h3>#header#</h3>";
            sHTML += "<div class=\"form - item\"><table><tr>#body#</tr></table></div></div></body></html>";
        }
        public Mailing(string MailTo)
        {
            this.MailTo = MailTo;
            sHTML += "<!DOCTYPE html><html><head>	<title>test</title>	<style>div.new-login-form {margin-top:15px;width:670px}";
            sHTML += "div.form-item {color:#848d95;background:#f9f9f9;border:1px solid #d4d4d4;box-shadow:-1px 1px #f2f2f2;";
            sHTML += "padding:7px 10px 9px;}div.form-item label{color:inherit;margin-top:3px;display:block;font-weight:bold;";
            sHTML += "padding-bottom:3px;}</style></head><body ><div class=\"new- login - form\"><h3>#header#</h3>";
            sHTML += "<div class=\"form - item\"><table><tr>#body#</tr></table></div></div></body></html>";
        }
        string BodyBuilder (List<string>[] list)
        {
            string sBody = "";            
            foreach (List<string> _list in list)
            {
                sBody += "<td><table>";
                bool bTitle = false;
                foreach (string item in _list)
                {
                    if (bTitle)
                    {
                        sBody += "<tr><td><label >" + item + "</label></td></tr>";
                    }
                    else
                    {
                        bTitle = true;
                        sBody += "<tr><td><table border : 2px solid width=\"100%\"><tr><td><label>" + 
                            item + "</label></td></tr></table></td></tr>";
                    }
                }
                sBody += "</table></td><td width=\"10\"></td>";
            }
            return sBody;
        }
        public string SendQuiz(string sMessage, string fileName, params List<string>[] list)
        {
            string Message = "Report successfully sent";
            try
            {
                //Gmail
                //int Port = 587;
                //string Host = "smtp.gmail.com";
                //bool EnableSsl = true;
                //int Timeout = 60 * 1000;
                //string UserName = "quizperso@gmail.com";
                //string Password = "thinkpad2012.";
                //string Email = "quizperso@gmail.com";

                //Almiaraj
                int Port = 465;
                string Host = "ssl0.ovh.net";
                bool EnableSsl = true;
                int Timeout = 60 * 1000;
                string UserName = "survey@almiaraj.com";
                string Password = "thinkpad2012.";
                string Email = "survey@almiaraj.com";


                // Command line argument must the the SMTP host.
                SmtpClient client = new SmtpClient();
                client.Port = Port;
                client.Host = Host;
                client.EnableSsl = EnableSsl;
                client.Timeout = Timeout;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential(UserName, Password);

                sMessage = sHTML.Replace("#header#", sMessage).Replace("#body#", BodyBuilder(list));
                MailMessage mm = new MailMessage(Email, MailTo, "Survey, Notification", sMessage);
                mm.BodyEncoding = UTF8Encoding.UTF8;
                mm.IsBodyHtml = true;
                mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

                Attachment attachment = new Attachment(fileName);
                mm.Attachments.Add(attachment);

                client.Send(mm);
            }
            catch (Exception ex)
            {
                Message = ex.Message;
            }
            return Message;
        }
    }
}
