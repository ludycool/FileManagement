using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Microsoft.Practices.Unity;
using e3net.BLL;

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
            string action = context.Request["action"];
            if (action == "savewebword")
            {
                HttpPostedFile file = context.Request.Files[0];
                string backmsg = SaveWebWord(file, context);
                context.Response.Write(backmsg);
            }
            else if (action == "copyfilebak")
            {
                string backmsg = CopyFileAndSave(context);
                context.Response.Write(backmsg);
            }
        }

        private string CopyFileAndSave(HttpContext context)
        {
            string backURL = "false";
            string toId = context.Request["toid"];
            var mql2 = e3net.Mode.File_ImageSet.SelectAll().Where(e3net.Mode.File_ImageSet.ToId.Equal(toId));
            var fileEntity = new File_ImageBiz().GetEntity(mql2);

            string fileid = fileEntity.Id.ToString().Trim();
            string filenamecopy = "bak_" + fileEntity.FileName.Trim();
            string fullroutecopy = fileEntity.Route.Trim() + filenamecopy;
            string sourceFileName = context.Server.MapPath(fileEntity.FullRoute.Trim()); //原始文件名称
            string destFileName = context.Server.MapPath(fullroutecopy);//备份文件名称
            if (File.Exists(destFileName) == false)
            {
                File.Copy(sourceFileName, destFileName);
            }
            //States 状态（已审核--2、审核中--1，已提交--0，编辑中--1）   
            string sql = string.Format("update TF_LifeComments set States=0 Where Id='{0}'", toId);
            int f1 = new TF_LifeCommentsBiz().ExecuteSqlWithNonQuery(sql);
            if (f1 > 0)
            {
                string sql2 = string.Format("update File_Image set FileNameCopy='{1}',FullRouteCopy='{2}',UpdateTime=getdate(),HasBackups='true' Where Id='{0}'", fileid, filenamecopy, fullroutecopy);
                int f2 = new File_ImageBiz().ExecuteSqlWithNonQuery(sql2);
                if (f2 > 0)
                {
                    backURL = "true";
                }
            }
            return backURL;
        }


        private string SaveWebWord(HttpPostedFile file, HttpContext context)
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

                if (!string.IsNullOrEmpty(context.Request["sfile"]))
                {
                    fileFullName = context.Request["sfile"].ToString().Trim();//服务器文件地址                           
                    fileFullName = context.Server.MapPath(fileFullName);
                    if (!Directory.Exists(uploadPath))
                    {
                        Directory.CreateDirectory(uploadPath);
                    }
                    File.WriteAllBytes(fileFullName, fileArray);
                    backURL = "true";
                }
            }
            return backURL;
        }

        private string UploadImgForMatch_bak(HttpPostedFile file, HttpContext context, string folder, string fileType)
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
                            backURL = "true";
                        }
                    }
                    else if (context.Request["action"].ToString().Trim() == "manager")
                    {
                        string serverfile = context.Request["sfile"].ToString().Trim();//服务器文件地址     /Upload/file/20161004121157_286.docx                      

                        string fileid = context.Request["curfileid"].ToString().Trim();
                        string filedir = context.Request["curfiledir"].ToString().Trim();

                        string sourceFileName = context.Server.MapPath(serverfile); //原始文件名称
                        string tempF = serverfile;

                        if (!Directory.Exists(uploadPath))
                        {
                            Directory.CreateDirectory(uploadPath);
                        }

                        bool hasBackups = false;
                        string fullroutecopy = "";
                        string filenamecopy = "";
                        var mql1 = e3net.Mode.File_ImageSet.SelectAll().Where(e3net.Mode.File_ImageSet.Id.Equal(fileid));
                        e3net.Mode.File_Image fmodel = new File_ImageBiz().GetEntity(mql1);
                        if (fmodel != null)
                        {
                            hasBackups = Convert.ToBoolean(fmodel.HasBackups);
                        }
                        if (hasBackups == false)
                        {
                            tempF = "bak_" + serverfile.Replace(filedir, "");
                            string destFileName = context.Server.MapPath(filedir) + tempF;//备份文件名称
                            if (File.Exists(destFileName) == false)
                            {
                                File.Copy(sourceFileName, destFileName);
                                fileFullName = destFileName;
                            }
                            filenamecopy = tempF;
                            fullroutecopy = filedir + tempF;
                        }
                        else
                        {
                            fileFullName = sourceFileName;
                            fullroutecopy = fmodel.FullRouteCopy;
                            filenamecopy = fmodel.FileNameCopy;
                        }
                        File.WriteAllBytes(fileFullName, fileArray);

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