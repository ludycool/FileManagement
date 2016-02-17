using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.tools
{
   public class Searchclass
   {
       private string fieldName;
       private string compareType;
       private string keyValue;
       private string binaryOperation;

     
       public string FieldName
       {
           get { return fieldName; }
           set { fieldName = value; }
       }

       public string CompareType
       {
           get { return compareType; }
           set { compareType = value; }
       }

       public string KeyValue
       {
           get { return keyValue; }
           set { keyValue = value; }
       }

       public string BinaryOperation
       {
           get { return binaryOperation; }
           set { binaryOperation = value; }
       }
   }
}
