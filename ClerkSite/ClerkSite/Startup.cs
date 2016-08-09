using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ClerkSite.Startup))]
namespace ClerkSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
