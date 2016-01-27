using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ESUI.Models
{
    public class Sheet
    {
        public string Name { get; set; }
        public List<Column> Columns { get; set; }
        public DataTable DataSource { get; set; }
        public Sheet() { }
        public Sheet(string name, List<Column> columns, DataTable dataSource)
        {
            Name = name;
            Columns = columns;
            DataSource = dataSource;
        }
    }
}