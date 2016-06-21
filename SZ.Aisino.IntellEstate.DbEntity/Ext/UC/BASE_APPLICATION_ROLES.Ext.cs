using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace SZ.Aisino.UC.DbEntity
{
    public partial class BASE_APPLICATION_ROLES
    {

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

        public PlatformType PLATFORM_ENUM
        {
            get
            {
                return (PlatformType)this.PLATFORM;
            }
            set
            {
                this.PLATFORM = (decimal)value;
            }
        }
        public PowerType HASPOWER_ENUM { set; get; }
         

        private List<int> _companyIDList;
        public List<int> CompanyIDList
        {
            get
            {
                if (_companyIDList == null)
                    return new List<int>();
                else
                    return _companyIDList;
            }
            set
            {
                _companyIDList = value;
            }
        }
        private int _layer;
        public int Layer
        {
            get
            {
                var result =0;
                if (!string.IsNullOrEmpty(this.SEQUENCE_STRING))
                {
                    var temp =  this.SEQUENCE_STRING.Split('-').Length ;
                    result = temp > 0 ? temp - 2 : 0;
                }
                else
                {
                    result = 0;
                }
                    return result;
            }
            set
            {
                _layer = value;
            }
        }

        
        public List<int> SelectedIDList { set; get; }



    }



}
