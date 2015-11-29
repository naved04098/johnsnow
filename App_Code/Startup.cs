using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(My_CARE.Startup))]
namespace My_CARE
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
