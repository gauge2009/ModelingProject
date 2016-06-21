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
    public partial class BASE_BUTTON
    {
        public BASE_BUTTON()
        {
            this.BASE_MODULE_BUTTON = new HashSet<BASE_MODULE_BUTTON>();
        }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal BUTTON_ID { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string BUTTON_CODE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string BUTTON_NAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string BUTTON_TITLE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal BUTTON_TYPE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(508)]
    	public string BUTTON_ICON { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(508)]
    	public string BUTTON_IMG { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string BUTTON_EVENT { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string BUTTON_METHOD { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember, StringLength(400)]
    	public string BUTTON_REMARK { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal SEQUENCE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public decimal DELETE_MARK { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string MODIFY_USERNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string MODIFY_FULLNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public System.DateTime MODIFY_DATE { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string CREATE_USERNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required, StringLength(100)]
    	public string CREATE_FULLNAME { get; set; }
    
        /// <summary>
        /// 
        /// </summary>
        [DataMember , Required]
    	public System.DateTime CREATE_DATE { get; set; }
    
    
        public virtual ICollection<BASE_MODULE_BUTTON> BASE_MODULE_BUTTON { get; set; }
    }
}