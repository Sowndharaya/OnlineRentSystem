using Mailjet.Client;
using Mailjet.Client.Resources;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Rocky.Utility
{
    public class EmailSender : IEmailSender
    {
        private readonly IConfiguration _configuration;

        public MailJetSettings _mailJetSettings { get; set; }

        public EmailSender(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            return Execute(email, subject, htmlMessage);
        }

        public async Task Execute(string email, string subject, string body)
        {
            //  _mailJetSettings = _configuration.GetSection("MailJet").Get<MailJetSettings>();

            //  MailjetClient client = new MailjetClient(_mailJetSettings.ApiKey, _mailJetSettings.SecretKey)
            //{

            // };
            //MailjetRequest request = new MailjetRequest
            //{
            //    Resource = Send.Resource,
            //}
            //.Property(Send.Messages, new JArray {

            var client = new MailjetClient("3f7f7537a5e2cf1b3a0ad579b3340e75", "d092f0f8a12fdb121d57742abbcfe0a5");


                var request = new MailjetRequest { Resource= Send.Resource}
                .Property(Send.FromEmail, "2k17cse103@kiot.ac.in")
                   .Property(Send.FromName, "Sow")
                      .Property(Send.Subject, subject)
                         .Property(Send.HtmlPart, body)
                            .Property(Send.Recipients, new JArray


             {
                new JObject {
      
       {"Email",email }
      } 
     
             });
            await client.PostAsync(request);
        }
    }
}