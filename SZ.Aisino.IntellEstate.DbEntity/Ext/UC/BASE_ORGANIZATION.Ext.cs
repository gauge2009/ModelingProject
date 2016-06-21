using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SZ.Aisino.UC.DbEntity {
    public partial class BASE_ORGANIZATION {

        public virtual BASE_USERINFO AssistantManager {
            get;
            set;
        }

        public virtual BASE_USERINFO Manager {
            get;
            set;
        }
    }
}
