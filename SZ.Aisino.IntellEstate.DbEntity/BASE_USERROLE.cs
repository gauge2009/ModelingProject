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
    public partial class BASE_USERROLE
    {
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal USERROLE_ID { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public decimal? APPLICATION_ROLE_ID { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember]
    	public decimal? USER_ID { get; set; }
    
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
    
    
        public virtual BASE_APPLICATION_ROLES BASE_APPLICATION_ROLES { get; set; }
        public virtual BASE_USERINFO BASE_USERINFO { get; set; }
    }
}
