﻿using Rkna_Project.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Rkna_Project.MetaData
{
    public class Area_TableMeta
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Area_TableMeta()
        {
            this.Slut_Table = new HashSet<Slut_Table>();
        }

        //[Required]
        //[MinLength(1)]
        [ScaffoldColumn(false)]
        public int Area_ID { get; set; }
        [Required(ErrorMessage = "You must Choose a state")]
        [ScaffoldColumn(false)]
        public int States_ID { get; set; }
        [Required(ErrorMessage = "Area is required")]
        [MaxLength(100)]
        [MinLength(15, ErrorMessage = "It's too Small")]
        [DataType(DataType.Text, ErrorMessage = "Please Enter Text")]
        public string Area_Name { get; set; }
        [MinLength(15, ErrorMessage = "It's Very Small")]
        [DataType(DataType.Text, ErrorMessage = "Please Enter Text")]
        public string Area_Desc { get; set; }
        [ScaffoldColumn(false)]
        public string Area_X_Point { get; set; }
        [ScaffoldColumn(false)]
        public string Area_Y_Point { get; set; }
        [Required(ErrorMessage = "Name is required")]
        [MaxLength(128)]
        [MinLength(15, ErrorMessage = "It's too Small")]
        [DataType(DataType.Text, ErrorMessage = "Please Enter Text")]
        public string Area_Manger { get; set; }
        [Required(ErrorMessage = "Hour Cost is required")]
        [RegularExpression(@"^[0-9]+(\.[0-9]{1,2})$", ErrorMessage = "Required 09.0")]
        public decimal Area_Hour_Rate { get; set; }
        [Required(ErrorMessage = "Start Time is required")]
        [DataType(DataType.Time, ErrorMessage = "Enter Areal time")]
        //[DisplayFormat(DataFormatString = "{0:hh:mm tt}", ApplyFormatInEditMode = true)]
        //[RegularExpression(@"/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/")]
        public System.TimeSpan Area_Start_Time { get; set; }
        [Required(ErrorMessage = "End Time is required")]
        [DataType(DataType.Time,ErrorMessage ="Enter Areal time")]
        //[DisplayFormat(DataFormatString = "{0:hh:mm tt}", ApplyFormatInEditMode = true)]
        //[RegularExpression(@"/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/")]
        public System.TimeSpan Area_End_Time { get; set; }

        public  AspNetUser AspNetUser { get; set; }
        public  AspNetUser AspNetUser1 { get; set; }
        public  States_Table States_Table { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public  ICollection<Slut_Table> Slut_Table { get; set; }
       ////hhh 
    }
}
