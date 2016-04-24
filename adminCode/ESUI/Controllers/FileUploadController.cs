using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using e3net.Mode.HttpView;

namespace ESUI.Controllers
{
    public class FileUploadController : Controller
    {
         
        //
        // GET: /FileUpload/

        public ActionResult Index()
        {
            return View();
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public JsonResult Upload(HttpPostedFileBase fileData, string guid, string folder)
        {
                HttpReSultMode ReSultMode = new HttpReSultMode();
            if (fileData != null)
            {
               
                try
                {
                
                    ControllerContext.HttpContext.Request.ContentEncoding = Encoding.GetEncoding("UTF-8");
                    ControllerContext.HttpContext.Response.ContentEncoding = Encoding.GetEncoding("UTF-8");
                    ControllerContext.HttpContext.Response.Charset = "UTF-8";

                    // 文件上传后的保存路径
                 
//                    DirectoryUtil.AssertDirExist(filePath);
                 
                    string fileName = Guid.NewGuid().ToString();      //原始文件名称
                  
                   
                    string fileExtension = Path.GetExtension(fileData.FileName);         //文件扩展名
                    string newFilename = fileName + fileExtension;
                    string virtualPath =
 string.Format("~/UploadFiles/{0}", newFilename);
                    string filePath = Server.MapPath(virtualPath);
                    string saveName = Guid.NewGuid().ToString() + fileExtension; //保存文件名称
                    fileData.SaveAs(filePath);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = newFilename;
                    ReSultMode.Msg = "添加成功";
                }
                catch (Exception ex)
                {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "添加失败";
                }
            }
            else
            {
                ReSultMode.Code = -11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "添加失败";
            }
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);
        }

        private byte[] ReadFileBytes(HttpPostedFileBase fileData)
        {
            byte[] data;
            using (Stream inputStream = fileData.InputStream)
            {
                MemoryStream memoryStream = inputStream as MemoryStream;
                if (memoryStream == null)
                {
                    memoryStream = new MemoryStream();
                    inputStream.CopyTo(memoryStream);
                }
                data = memoryStream.ToArray();
            }
            return data;
        }
    }
}
