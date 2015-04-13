using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ITCR.AsignacionAutomaticaCargas.Interfaz.Startup))]
namespace ITCR.AsignacionAutomaticaCargas.Interfaz
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
