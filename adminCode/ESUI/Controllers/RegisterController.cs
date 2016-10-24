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
    public class RegisterController : Controller
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

        [Dependency]
        public RMS_DepartmentBiz dpBiz { get; set; }
        [Dependency]
        public RMS_UserBiz uBiz { get; set; }


        [Dependency]
        public RMS_UserRoleBiz urBiz { get; set; }

        public ActionResult Index()
        {

            ViewBag.Message = "用户注册";
            //  ViewBag.ManuString= GetManu();
            return View();
        }

        public JsonResult NewRegister(RMS_User EidModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;
            if (!(EidModle.Id != null && !EidModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                EidModle.UserType = 1;
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
                    OPBiz.Add(EidModle);

                    //设置默认角色
                    List<RMS_Role> listRole = URBiz.GetOwnList<RMS_Role>(RMS_RoleSet.SelectAll().Where(RMS_RoleSet.RoleTypes.Equal(0)));//所有的姓名登录角色
                    RMS_UserRole urItem = new RMS_UserRole();
                    urItem.Id = Guid.NewGuid();
                    urItem.UserId = EidModle.Id;
                    urItem.RoleId = listRole[0].Id;
                    urBiz.Add(urItem);
                    
                    ReSultMode.Code = 11;
                    ReSultMode.Data = EidModle.Id.ToString();
                    ReSultMode.Msg = "注册成功!";
                    RedirectToAction("index", "home");
                }
            }

            return Json(ReSultMode, JsonRequestBehavior.AllowGet);
        }
        
        [HttpPost]
        [AllowAnonymous]
        //[ValidateAntiForgeryToken] 安全必须 外网出错 所需的防伪 Cookie“__RequestVerificationToken”不存在。 暂时去掉，待解决
        public ActionResult RegLogin(string loginname, string password)
        {
            LoginModel mode = new LoginModel();
            mode.LoginName = loginname;//Request["uid"];
            mode.Password = password;// Request["pwd"];
            mode.UserType = "1";
            // if (ModelState.IsValid)

            ViewData["UserType"] = GenerateList();
            //if (Session["ValidateCode"] != null)
            //{
            #region  获取cookies
            //if (!string.IsNullOrEmpty(Request.Cookies["UserData"]["AdminUserInfo"]))//Cookies保存 获取解析
            //{
            //    string dataj = Request.Cookies["UserData"]["AdminUserInfo"];
            //    UserData = JsonHelper.FromJson<AdminUserInfo>(dataj);
            //    if (UserData != null)
            //    {
            //        return RedirectToAction("index", "home");
            //    }
            //}
            #endregion

            //string Vcode = Session["ValidateCode"].ToString();
            //if (mode.VCode.Trim().Equals(Vcode))//验证码
            //{

            AdminUserInfo UserData = null;
            List<V_UserRole> adminRole = null;
            bool IsHaveP = false;//是否有权限登录

            #region  根据类型登录
            switch (mode.UserType)
            {
                case "1"://账号密码登录
                    var sql = V_UserRoleSet.SelectAll().Where(V_UserRoleSet.LoginName.Equal(mode.LoginName).And(V_UserRoleSet.Password.Equal(mode.Password)));
                    adminRole = URBiz.GetOwnList<V_UserRole>(sql);
                    break;
                #region MyRegion
                //case "0"://姓名登录
                //    var sql0 = V_UserRoleSet.SelectAll().Where(V_UserRoleSet.LoginName.Equal(mode.LoginName).And(V_UserRoleSet.UserType.Equal(0)));
                //    adminRole = URBiz.GetOwnList<V_UserRole>(sql0);
                //    if (adminRole != null && adminRole.Count > 0)//检查是否存在，不存在就添加，给登录用户的角色
                //    {
                //        break;
                //    }
                //    else
                //    {
                //        RMS_User item = new RMS_User();
                //        item.Id = Guid.NewGuid();
                //        item.LoginName = mode.LoginName;
                //        item.UserType = 0;
                //        item.CreateTime = DateTime.Now;
                //        item.ModifyTime = DateTime.Now;
                //        uBiz.Add(item);

                //        List<RMS_Role> listRole = URBiz.GetOwnList<RMS_Role>(RMS_RoleSet.SelectAll().Where(RMS_RoleSet.RoleTypes.Equal(0)));//所有的姓名登录角色

                //        RMS_UserRole urItem = new RMS_UserRole();
                //        urItem.Id = Guid.NewGuid();
                //        urItem.UserId = item.Id;
                //        urItem.RoleId = listRole[0].Id;
                //        urBiz.Add(urItem);

                //        adminRole = URBiz.GetOwnList<V_UserRole>(sql0);
                //    }
                //    break;
                //case "2"://身份证登录
                //    var sql2 = V_UserRoleSet.SelectAll().Where(V_UserRoleSet.LoginName.Equal(mode.LoginName).And(V_UserRoleSet.UserType.Equal(2)));
                //    adminRole = URBiz.GetOwnList<V_UserRole>(sql2);
                //    if (adminRole != null && adminRole.Count > 0)//检查是否存在，不存在就添加，给身份证用户的角色
                //    {
                //        break;
                //    }
                //    else
                //    {
                //        RMS_User item = new RMS_User();
                //        item.Id = Guid.NewGuid();
                //        item.LoginName = mode.LoginName;
                //        item.UserType = 2;
                //        item.CreateTime = DateTime.Now;
                //        item.ModifyTime = DateTime.Now;
                //        uBiz.Add(item);

                //        List<RMS_Role> listRole = URBiz.GetOwnList<RMS_Role>(RMS_RoleSet.SelectAll().Where(RMS_RoleSet.RoleTypes.Equal(2)));//所有的姓名登录角色

                //        RMS_UserRole urItem = new RMS_UserRole();
                //        urItem.Id = Guid.NewGuid();
                //        urItem.UserId = item.Id;
                //        urItem.RoleId = listRole[0].Id;
                //        urBiz.Add(urItem);

                //        adminRole = URBiz.GetOwnList<V_UserRole>(sql2);
                //    }
                //    break; 
                #endregion
                default:

                    break;
            }

            #endregion

            if ((adminRole != null && adminRole.Count > 0)) // 账号是否存在，添加权限配置
            {
                #region 存用户数据

                UserData = new AdminUserInfo();
                UserData.UserTypes = int.Parse(adminRole[0].UserType.ToString());
                // UserData.adminUserInfo = adminRole[0];
                UserData.Id = adminRole[0].Id;
                UserData.UserName = adminRole[0].LoginName;
                UserData.RoleId = adminRole[0].RoleId;
                UserData.Password = adminRole[0].Password;
                if (!string.IsNullOrEmpty(adminRole[0].Tel))
                {
                    UserData.Modify = true;
                }
                else
                {
                    UserData.Modify = false;
                }
                if (adminRole[0].DepartmentId != null)
                {
                    var dpsql = RMS_DepartmentSet.SelectAll().Where(RMS_DepartmentSet.Id.Equal(adminRole[0].DepartmentId));
                    RMS_Department dpItem = dpBiz.GetEntity(dpsql);
                    if (dpItem != null)
                    {
                        UserData.DepartmentId = dpItem.Id;
                        UserData.DepartmentName = dpItem.Name;
                    }
                }
                IsHaveP = true;

                #endregion

                #region  获取权限
                if (IsHaveP)//可以登录
                {

                    List<V_RoleManus> manus = URBiz.GetOwnList<V_RoleManus>(V_RoleManusSet.SelectAll().Where(V_RoleManusSet.RoleId.Equal(UserData.RoleId)));//所有的菜单
                    List<V_RoleManuButtons> buttons = URBiz.GetOwnList<V_RoleManuButtons>(V_RoleManuButtonsSet.SelectAll().Where(V_RoleManuButtonsSet.RoleId.Equal(UserData.RoleId)));//角色拥有的菜单的所有按钮
                    List<V_MenuButtons> AllButtons = URBiz.GetOwnList<V_MenuButtons>(V_MenuButtonsSet.SelectAll());//所有菜单的所有按钮
                    List<Manu> ListManus = new List<Manu>();
                    if (manus != null && manus.Count > 0)
                    {
                        foreach (V_RoleManus item in manus)
                        {
                            Manu OneManu = new Manu();
                            OneManu.manuInfo = item;
                            OneManu.ListButtons = buttons.FindAll(p => p.ManuId.Equals(item.ManuId)).OrderBy(p => p.OrderNo).ToList();
                            OneManu.ManuAllButton = AllButtons.FindAll(p => p.ManuId.Equals(item.ManuId));
                            ListManus.Add(OneManu);
                        }
                        UserData.ListManus = ListManus;
                    }

                    #region   存cookies
                    string datajson = JsonHelper.ToJson(UserData);
                    HttpCookie cookie = new HttpCookie("UserData");//初使化并设置Cookie的名称
                    DateTime dt = DateTime.Now;
                    TimeSpan ts = new TimeSpan(0, 1, 0, 0, 0);//过期时间为1分钟
                    cookie.Expires = dt.Add(ts);//设置过期时间

                    cookie.Values.Add("AdminUserInfo", datajson);
                    Response.AppendCookie(cookie);

                    #endregion


                    //return RedirectToAction("index", "home");
                }

                #endregion
            }
            else
            {
                //  return RedirectToAction("index", "Login");
                // 如果我们进行到这一步时某个地方出错，则重新显示表单
                ViewData["IsShowAlert"] = true;
                ViewData["Alert"] = "账号或者密码有误";

            }
            //}
            //else
            //{
            //    ViewData["IsShowAlert"] = true;
            //    ViewData["Alert"] = "验证码有误";
            //}
            //}
            return View();
        }

        public ActionResult GetValidateCode()
        {

            ValidateCode vCode = new ValidateCode();

            string code = vCode.CreateValidateCode(4);

            Session["ValidateCode"] = code;

            byte[] bytes = vCode.CreateValidateGraphic(code);

            return File(bytes, @"image/jpeg");
        }

        public static SelectList GenerateList()
        {
            List<SelectListItem> items = new List<SelectListItem>()
            {
                new SelectListItem(){Text="账号密码", Value="1"},
                new SelectListItem(){Text="姓名登录", Value="0"},
                   new SelectListItem(){Text="身份证登录", Value="2"}
            };

            SelectList generateList = new SelectList(items, "Value", "Text");

            return generateList;
        }
    }
}
