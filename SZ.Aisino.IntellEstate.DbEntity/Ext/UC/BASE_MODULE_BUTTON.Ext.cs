using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SZ.Aisino.UC.DbEntity
{
    public partial class BASE_MODULE_BUTTON  
    {

        public string BUTTON_NAME { get; set; }

        public ModuleButtonType ModuleButtonType { get; set; }

        public BASE_APPLICATION_ROLE_RIGHT AuthorizeInfo { get; set; } 

 

     }

  
}
