using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace e3net.tools
{
  public  class EnumConfig
    {
      [Description("签收状态")]
      public enum ArchiveType
      {
          [Description("代签收")] 
          GenerationSign,
          [Description("已签收")]
          HaveSign,
      }
    }
}
