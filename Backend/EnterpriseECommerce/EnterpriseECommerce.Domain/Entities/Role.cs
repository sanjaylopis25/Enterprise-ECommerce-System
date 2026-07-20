using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnterpriseECommerce.Domain.Entities
{
    public class Role
    {
        public int RoleId { get; set; }

        public string Name { get; set; } = string.Empty;

        public string Description { get; set; } = string.Empty;

        public DateTime CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }
        public ICollection<User> Users { get; set; } = new List<User>();
    }
}
