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
                string fileFullName = "";
                string uploadPath = context.Server.MapPath(context.Request["curfiledir"].ToString().Trim()); //保存目录
                HttpPostedFile upPhoto = context.Request.Files[0];
                int filelength = file.ContentLength;
                byte[] fileArray = new Byte[filelength];
                Stream fstream = upPhoto.InputStream;
                fstream.Read(fileArray, 0, filelength); //这些编码是把文件转换成二进制的文件
                if (!string.IsNullOrEmpty(context.Request["action"]))
                {
                    if (context.Request["action"].ToString().Trim() == "user")
                    {
                        if (!string.IsNullOrEmpty(context.Request["sfile"]))
                        {
                            fileFullName = context.Request["sfile"].ToString().Trim();//服务器文件地址                           
                            fileFullName = context.Server.MapPath(fileFullName);
                            if (!Directory.Exists(uploadPath))
                            {
                                Directory.CreateDirectory(uploadPath);
                            }
                            File.WriteAllBytes(fileFullName, fileArray);
                                            
                            //FileStream fs = new System.IO.FileStream(fileFullName, System.IO.FileMode.Open, System.IO.FileAccess.Write);
                            //fs.Write(fileArray,0, fileArray.Length);
                            //fs.Close();
                            backURL = "true";
                        }
                    }
                    else if (context.Request["action"].ToString().Trim() == "manager")
                    {
                        string newName = System.DateTime.Now.ToString("yyyyMMddHHmmss_fff") + fileExt;

                        //uploadPath + newName;
                        if (!File.Exists(uploadPath))
                        {
                            if (!Directory.Exists(uploadPath))
                            {
                                // Directory.CreateDirectory(uploadPath);
                            }
                            FileStream fs = new System.IO.FileStream(fileFullName, System.IO.FileMode.CreateNew, System.IO.FileAccess.Write);
                            fs.Write(fileArray, 0, fileArray.Length);
                            fs.Close();
                        }
                        else
                        {
                            FileStream fs = new System.IO.FileStream(uploadPath, System.IO.FileMode.Create, System.IO.FileAccess.Write);
                            fs.Write(fileArray, 0, fileArray.Length);
                            fs.Close();
                        }
                        backURL = "true";
                    }
                }
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