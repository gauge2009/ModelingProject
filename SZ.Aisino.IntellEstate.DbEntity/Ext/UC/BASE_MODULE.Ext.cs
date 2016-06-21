using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace SZ.Aisino.UC.DbEntity
{
    public partial class BASE_MODULE
    {
        public string BindedButtons { get; set; }

        public DeleteMarkType DELETE_MARK_ENUM
        {
            get
            {
                return (DeleteMarkType)this.DELETE_MARK;
 
            }
            set
            {
                this.DELETE_MARK = (decimal)value;
            }
        }

        //public PLATFORM_ENUM PLATFORM_ENUM
        //{
        //    get
        //    {
        //        return this.PLATFORM.HasValue ? (PLATFORM_ENUM)this.PLATFORM : PLATFORM_ENUM.Web;
        //    }
        //    set
        //    {
        //        this.PLATFORM = (decimal)value;
        //    }
        //}

        // public ModuleType MODULE_TYPE_ENUM
        //{
        //    get
        //    {
        //        return (ModuleType)this.MODULE_TYPE;
        //    }
        //    set
        //    {
        //        this.MODULE_TYPE = (decimal)value;
        //    }
        //}

        public ResourceType ResourceType
        {
            get
            {
                return (ResourceType)this.MODULE_TYPE;
            }
            set
            {
                this.MODULE_TYPE = (decimal)value;
            }
        }

        /// <summary>
         /// ResourceType=2时非空
        /// </summary>
         //public decimal? ButtonID { get; set; }  

        /// <summary>
        /// 触发模块页面的PageButton;
        /// Module_Button表中有ResponseID反向关联回来
        /// </summary>
        public int? TriggerButtonID { get; set; }

        public BASE_MODULE_BUTTON TriggerButton { get; set; }
        public string IconUrl { get; set; }

        ///// <summary>
        ///// 模块上的事件按钮
        ///// </summary>
        //public List<BASE_MODULE_BUTTON> EventButtonList { get; set; }
        ///// <summary>
        ///// 模块上的页面按钮(每个页面按钮必通过RESPONSE_ID关联一个子模块)
        ///// </summary>
        //public List<BASE_MODULE_BUTTON> PageButtonList { get; set; }


        //module.ModulesOpenByMenu[0].AuthorizeInfo
        //module.ModulesOpenByMenu[0].AuthorizeInfo.MODULE_ID
        //module.ModulesOpenByMenu[0].AuthorizeInfo.AUTHORIZE
        public BASE_APPLICATION_ROLE_RIGHT AuthorizeInfo { get; set; } //AUTHORIZE_ENUM

        /// <summary>
        /// 资源授权状态 true/false
        /// </summary>
        public bool IsAuthorized { get; set; }

 

    }

    


}
