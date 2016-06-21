//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace SZ.Aisino.IntellEstate.DbEntity
{
    using System;
    using System.Collections.Generic;
    using System.Runtime.Serialization;
    using System.ComponentModel.DataAnnotations;
    
    
    /// <summary>
    /// 
    /// </summary>
    [Serializable,DataContract]
    public partial class BASE_USERINFO
    {
        public BASE_USERINFO()
        {
            this.BASE_USERROLE = new HashSet<BASE_USERROLE>();
        }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal USER_ID { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public decimal? COMPANY_ID { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(400)]
    	public string COMPANY_NAME_CN { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string USERNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string PASSWORD { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(1)]
    	public string GENDER { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(400)]
    	public string EMAIL { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string QUESTION { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string ANSWER { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(200)]
    	public string SOURCE_URL { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(200)]
    	public string SOURCE_NAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string LANGUAGE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public decimal? USER_TYPE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public bool IS_ADMIN { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public System.DateTime? LOCK_DAY { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal DELETE_MARK { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string MODIFY_USERNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string MODIFY_FULLNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public System.DateTime? MODIFY_DATE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string CREATE_USERNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(100)]
    	public string CREATE_FULLNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public System.DateTime? CREATE_DATE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public System.DateTime? LastActive { get; set; }
    
    
        public virtual ICollection<BASE_USERROLE> BASE_USERROLE { get; set; }
    }
}
