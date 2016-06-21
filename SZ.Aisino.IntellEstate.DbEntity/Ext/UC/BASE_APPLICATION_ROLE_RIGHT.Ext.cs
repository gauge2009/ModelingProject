using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SZ.Aisino.UC.DbEntity
{
   public partial class BASE_APPLICATION_ROLE_RIGHT
    {
       public AuthorizeType AUTHORIZE_ENUM
       {
           get
           {
               return (AuthorizeType)this.AUTHORIZE;
           }
           set
           {
               this.AUTHORIZE = (decimal)value;
           }
       }
       public PermissionType PERMISSION_TYPE_ENUM
       {
           get
           {
               return (PermissionType)this.PERMISSION_TYPE;
           }
           set
           {
               this.PERMISSION_TYPE = (decimal)value;
           }
       }

    }



}
