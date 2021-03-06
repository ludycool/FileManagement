﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using App.BLL;
//using App.DAL;
//using App.IBLL;
//using App.IDAL;
using e3net.BLL;
using e3net.BLL.DynamicTable;
using e3net.BLL.RMS;
using e3net.IDAL;
using e3net.IDAL.DynamicTable;
using e3net.IDAL.RMS;
using Microsoft.Practices.Unity;

namespace App.Core
{
    public class DependencyRegisterType
    {
        //系统注入
        public static void Container_Sys(ref UnityContainer container)
        {
            //container.RegisterType<ISysSampleBLL, SysSampleBLL>();//样例
            #region 权限
            container.RegisterType<IRMS_UserRoleDao, RMS_UserRoleBiz>();
            container.RegisterType<IRMS_ButtonsDao, RMS_ButtonsBiz>();
            container.RegisterType<IRMS_UserDao, RMS_UserBiz>();
            container.RegisterType<IRMS_UserRoleDao, RMS_UserRoleBiz>();
            container.RegisterType<IRMS_RoleDao, RMS_RoleBiz>();

            container.RegisterType<IRMS_RoleManusDao, RMS_RoleManusBiz>();
            container.RegisterType<IRMS_RoleManuButtonsDao, RMS_RoleManuButtonsBiz>();


            container.RegisterType<IRMS_MenuButtonsDao, RMS_MenuButtonsBiz>();


            container.RegisterType<IRMS_MenusDao, RMS_MenusBiz>();

            
          
          container.RegisterType<ISys_DictionaryDao, Sys_DictionaryBiz>();

             container.RegisterType<IRMS_DepartmentDao, RMS_DepartmentBiz>();
             container.RegisterType<ICategoryTableDao, CategoryTableBiz>();
             container.RegisterType<IColumnChartsDao, ColumnChartsBiz>();
             container.RegisterType<IBaschartypeDao, BaschartypeBiz>();
             container.RegisterType<IBascharvalueDao, BascharvalueBiz>();

             container.RegisterType<ICorrelateColumnsDao, CorrelateColumnsBiz>();

             container.RegisterType<IMainAssociationDao, MainAssociationBiz>(); 
            container.RegisterType<IVcorrelateColumnsDao, VcorrelateColumnsBiz>();
            container.RegisterType<IEntryRecordFormDao, EntryRecordFormBiz>(); container.RegisterType<IVEntryRecordFormDao, VEntryRecordFormBiz>();
            #endregion
              

        }
    }
}