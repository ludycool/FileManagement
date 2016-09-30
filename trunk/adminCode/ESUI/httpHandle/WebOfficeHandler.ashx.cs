using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    /// <summary>
    /// uploadHandler 的摘要说明
    /// </summary>
    public class uploadHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Buffer = true;
            context.Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
            context.Response.AddHeader("pragma", "no-cache");
            context.Response.AddHeader("cache-control", "");
            context.Response.CacheControl = "no-cache";

            HttpPostedFile file = context.Request.Files[0];
            string backmsg = UploadImgForMatch(file, context, "DocumentFiles", "doc");
            context.Response.Write(backmsg);
        }

        private string UploadImgForMatch(HttpPostedFile file, HttpContext context, string folder, string fileType)
        {
            string backURL = "false";
            if (context.Request.Files.Count > 0)
            {
                string fileExt = System.IO.Path.GetExtension(file.FileName);
                HttpPostedFile upPhoto = context.Request.Files[0];
                int filelength = file.ContentLength;
                byte[] fileArray = new Byte[filelength];
                Stream fstream = upPhoto.InputStream;
                fstream.Read(fileArray, 0, filelength); //这些编码是把文件转换成二进制的文件
                string newName = System.DateTime.Now.ToString("yyyyMMddHHmmssfff") + fileExt;
                string uploadPath = context.Server.MapPath("/upload/" + folder + "/" + System.DateTime.Now.Year.ToString() + "/" + System.DateTime.Now.ToString("yyyyMM/"));
                string fileFullName = uploadPath + newName;
                if (!File.Exists(fileFullName))
                {
                    if (!Directory.Exists(uploadPath))
                    {
                        Directory.CreateDirectory(uploadPath);
                    }
                   // file.SaveAs(fileFullName);

                    FileStream fs = new System.IO.FileStream(fileFullName, System.IO.FileMode.CreateNew, System.IO.FileAccess.Write);
                    fs.Write(fileArray, 0, fileArray.Length);
                    fs.Close();
                }
                backURL = "true";
            }
            return backURL;
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}