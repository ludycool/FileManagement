using e3net.BLL.RMS;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.Mode.RMS;
using e3net.Mode.V_mode;
using e3net.tools;
using ESUI.Models;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TZHSWEET.Common;

namespace ESUI.Controllers
{
    public class RegisterController : BaseController
    {
        //
        // GET: /User/
        // [Import(typeof(IRMS_UserDao))]
        //  public IRMS_UserDao OPBiz { get; set; }
        //  public RMS_UserBiz OPBiz = new RMS_UserBiz();
        /// <summary>
        /// 业务层注入
        /// </summary>
        [Dependency]
        public RMS_UserBiz OPBiz { get; set; }
        //  [Import(typeof(IRMS_UserRoleDao))]
        // public IRMS_UserRoleDao URBiz { get; set; }
        //    public RMS_UserRoleBiz URBiz = new RMS_UserRoleBiz();
        [Dependency]
        public RMS_UserRoleBiz URBiz { get; set; }
        public ActionResult Index()
        {

            ViewBag.Message = "用户注册";
            //  ViewBag.ManuString= GetManu();
            return View();
        }

        public JsonResult EditInfo(RMS_User EidModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (!(EidModle.Id != null && !EidModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                var mql2 = RMS_UserSet.LoginName.Equal(EidModle.LoginName);
                long i = OPBiz.GetCount<RMS_UserSet>(mql2);
                if (i > 0)
                {
                    ReSultMode.Code = -13;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "用户名已存在";
                }
                else
                {
                    EidModle.Id = Guid.NewGuid();
                    EidModle.CreateTime = DateTime.Now;
                    EidModle.ModifyTime = DateTime.Now;
                    //rol.RoleDescription = EidModle.RoleDescription;
                    //rol.RoleOrder = EidModle.RoleOrder;

                    OPBiz.Add(EidModle);
                    ReSultMode.Code = 11;
                    ReSultMode.Data = EidModle.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                }
            }
            else
            {

                EidModle.WhereExpression = RMS_UserSet.Id.Equal(EidModle.Id);
                //  spmodel.GroupId = GroupId;
                if (OPBiz.Update(EidModle) > 0)
                {
                    ReSultMode.Code = 11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改成功";
                }
                else
                {
                    ReSultMode.Code = -13;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改失败";
                }
            }
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);



        }
        public JsonResult GetInfo(string ID)
        {
            var mql2 = RMS_UserSet.SelectAll().Where(RMS_UserSet.Id.Equal(ID));
            RMS_User Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        
        public JsonResult SetRole(string UserId, string RoleId)
        {
            Guid uId = Guid.Parse(UserId);
            Guid rId = Guid.Parse(RoleId);
            var sql = RMS_UserRoleSet.SelectAll().Where(RMS_UserRoleSet.UserId.Equal(uId));

            RMS_UserRole Rmodel = URBiz.GetEntity(sql);
            if (Rmodel == null)
            {
                Rmodel = new RMS_UserRole();
                Rmodel.Id = Guid.NewGuid();
                Rmodel.UserId = uId;
                Rmodel.RoleId = rId;
                URBiz.Add(Rmodel);
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {
                Rmodel.RoleId = rId;
                Rmodel.WhereExpression = RMS_UserRoleSet.Id.Equal(Rmodel.Id);
                //  spmodel.GroupId = GroupId;
                if (URBiz.Update(Rmodel) > 0)
                {
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }

            }

        }
    }
}
