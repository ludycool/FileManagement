using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ESUI.Models
{
    public class Column
    {
        public string Code { get; set; }
        public string Name { get; set; }
        public string DataType { get; set; }
        public int Width { get; set; }
        public bool Hidden { get; set; }

        public Column()
        {
        }

        public Column(string code, string name, string dataType, int width, bool hidden = false)
        {
            Code = code;
            Name = name;
            DataType = dataType;
            Width = width;
            Hidden = hidden;
        }
    }
}