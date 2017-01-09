using e3net.BLL;
using e3net.BLL.RMS;
using e3net.IDAL;
using e3net.Mode;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;

namespace ESUI.Controllers
{
    //[Export]
    public class DictionaryController : BaseController
    {
        //
        // GET: /Dictionary/

        //[Import(typeof(ISys_DictionaryDao))]
     //   public ISys_DictionaryDao DDBiz { get; set; }
       // public Sys_DictionaryBiz DDBiz = new Sys_DictionaryBiz();
        [Dependency]
        public Sys_DictionaryBiz DDBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }
        public JsonResult EditInfo(Sys_Dictionary Mode)
        {
            Random rnd = new Random();
            bool IsAdd = false;
            if (!(Mode.Id != null && !Mode.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                Mode.Id = Guid.NewGuid();
                Mode.CreateTime = DateTime.Now;
                Mode.ModifyTime = DateTime.Now;
                DDBiz.Add(Mode);
                SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.新增, "数据字典--添加", true, WebClientIP, "数据字典");
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {
                Mode.WhereExpression = Sys_DictionarySet.Id.Equal(Mode.Id);
                //  spmodel.GroupId = GroupId;
                Mode.CreateTime = DateTime.Now;
                Mode.ModifyTime = DateTime.Now;
                if (DDBiz.Update(Mode) > 0)
                {
                    SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.修改, "数据字典--修改", true, WebClientIP, "数据字典");
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.修改, "数据字典--修改", false, WebClientIP, "数据字典");

                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }

            }

        }
        public JsonResult GetInfo(string ID)
        {
            var mql = Sys_DictionarySet.SelectAll().Where(Sys_DictionarySet.Id.Equal(ID));
            Sys_Dictionary Rmodel = DDBiz.GetEntity(mql);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public string GetJson()
        {

            var sql = Sys_DictionarySet.SelectAll();
            List<Sys_Dictionary> listAll = DDBiz.GetOwnList<Sys_Dictionary>(sql);
            string jsonstring = DDBiz.GetTree(listAll);
            return jsonstring;
        }

        public JsonResult DeleteInfo(string ID)
        {

            var mql2 = Sys_DictionarySet.Id.Equal(ID);
            int f = DDBiz.Remove<Sys_DictionarySet>(mql2);
            SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.删除, "数据字典--删除", true, WebClientIP, "数据字典");
            return Json("OK", JsonRequestBehavior.AllowGet);

        }
    }
}
