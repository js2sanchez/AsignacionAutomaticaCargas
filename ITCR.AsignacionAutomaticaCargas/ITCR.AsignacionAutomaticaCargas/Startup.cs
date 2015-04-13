using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ITCR.AsignacionAutomaticaCargas.Startup))]
namespace ITCR.AsignacionAutomaticaCargas
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
