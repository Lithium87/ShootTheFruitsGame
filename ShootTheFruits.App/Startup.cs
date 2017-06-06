using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ShootTheFruits.App.Startup))]
namespace ShootTheFruits.App
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
