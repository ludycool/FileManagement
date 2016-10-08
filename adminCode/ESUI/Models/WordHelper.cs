using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Moon.Orm;
using Novacode;

namespace ESUI.Models
{
    public class WordHelper
    {

        public static bool ExportWord(List<Dictionary<string, MObject>> listItem, Dictionary<string, string> dirList, string Exportname, string loadfilename, int tablenum)
        {
            using (DocX docX = DocX.Load(loadfilename))
            {
              
                var tables = docX.Tables;

              
                foreach (var dir in dirList)
                {
                    docX.Bookmarks[dir.Key].SetText(dir.Value);
                }
             

                int k = 0;
                int y = 0;
               
                    foreach (var table in tables)
                    {
                        if (y < tablenum)
                        {
                            k = table.RowCount;
                            Row orderRowPattern = table.Rows[2];

                            foreach (Dictionary<string, MObject> dictionary in listItem)
                            { 
                                Row newOrderRow = table.InsertRow(orderRowPattern, k++);
                                foreach (KeyValuePair<string, MObject> keyValuePair in dictionary)
                                {
                                    var fd = keyValuePair.Key;
                                    var ddd = keyValuePair.Value;
                                    var dd = orderRowPattern.Paragraphs.FirstOrDefault(y1 => y1.Text.Equals("%" + fd + "%"));
                                    if (dd!=null)
                                    {
                                        newOrderRow.ReplaceText("%" + fd + "%", ddd.ToString()); 
                                    }

                                }
                              
                            }
                            y++;
                            table.RemoveRow(2);
                        }

                    }
                     

                docX.SaveAs(Exportname);
            }
            return true;
            
        }
    }
}