using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace SkoolComm.Web.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
    public class SessionAuthorizeAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            var httpContext = context.HttpContext;

            // Allow if the request is already authenticated
            if (httpContext.User?.Identity?.IsAuthenticated == true)
            {
                base.OnActionExecuting(context);
                return;
            }

            // Check for session values that indicate a logged-in user.
            // Common session keys are "UserId" or similar; we treat any non-empty session as authenticated.
            bool hasSessionUser = false;
            try
            {
                if (httpContext.Session != null && httpContext.Session.Keys != null)
                {
                    // Check for common keys
                    if (httpContext.Session.Keys.Contains("UserId") || httpContext.Session.Keys.Contains("userId") || httpContext.Session.Keys.Contains("IsAuthenticated") || httpContext.Session.Keys.Contains("user"))
                    {
                        hasSessionUser = true;
                    }

                    // Fallback: any session key present
                    if (!hasSessionUser && httpContext.Session.Keys.Any())
                        hasSessionUser = true;
                }
            }
            catch
            {
                // ignore session failures and treat as unauthenticated
            }

            if (!hasSessionUser)
            {
                // Not authenticated — redirect to login page
                context.Result = new RedirectToActionResult("Login", "Account", null);
                return;
            }

            base.OnActionExecuting(context);
        }
    }
}
