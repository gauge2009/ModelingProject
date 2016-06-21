using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace SZ.Aisino.UC.DbEntity
{
    /// <summary>
    /// 公司表扩展
    /// </summary>
    public partial class BASE_COMPANY
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public decimal? UserId { get; set; }

        /// <summary>
        /// 管理员账号
        /// </summary>
        public string AdminFullName
        {
            get;
            set;
        }
    }
}
