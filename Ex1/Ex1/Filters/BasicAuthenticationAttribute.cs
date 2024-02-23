using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using System.Web.Http.Results;
using System.Web.Mvc;

namespace Ex1.Filters
{
    public class BasicAuthenticationAttribute : System.Web.Http.AuthorizeAttribute
    {
        protected override bool IsAuthorized(HttpActionContext actionContext)
        {
            var authHeader = actionContext.Request.Headers.Authorization;

            if (authHeader != null)
            {
                var authHeaderValue = Encoding.UTF8.GetString(Convert.FromBase64String(authHeader.Parameter));
                var credentials = authHeaderValue.Split(':');
                var username = credentials[0];
                var password = credentials[1];

                if (username == "user" && password == "parola")
                {
                    return true;
                }
            }

            return false;
        }
    }
}