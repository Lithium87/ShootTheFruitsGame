namespace ShootTheFruits.Data
{
    using Microsoft.AspNet.Identity.EntityFramework;
    using Models;
    using System.Data.Entity;

    public class PlodovDbContext : IdentityDbContext<User>
    {
        public PlodovDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
            Database.SetInitializer<PlodovDbContext>(new DropCreateDatabaseAlways<PlodovDbContext>());
        }

        public static PlodovDbContext Create()
        {
            return new PlodovDbContext();
        }

    }
}
