
using e3net.common;
using e3net.common.SysMode;
using e3net.DAL;
using e3net.IDAL.RMS;
using e3net.Mode.RMS;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;

namespace e3net.BLL.RMS
{
    //[Export(typeof(IRMS_MenusDao))]
    public class RMS_MenusBiz : BaseDao<RMS_Menus>, IRMS_MenusDao
    {

        /// <summary>
        /// 转化数型菜单
        /// </summary>
        /// <param name="mql"></param>
        /// <returns></returns>
        public List<TreeMenus> GetTreeManus(List<RMS_Menus> list)
        {
            List<TreeMenus> resultList = new List<TreeMenus>();
            List<RMS_Menus> listfather = list.FindAll(p => p.ParentManuId == Guid.Parse("00000000-0000-0000-0000-000000000000"));//父项
            listfather = listfather.OrderBy(i => i.OrderNo).ToList();
            int fatherCout = listfather.Count;
            for (int i = 0; i < fatherCout; i++)
            {
                TreeMenus resultItem = new TreeMenus();
                resultItem.Id = listfather[i].Id;
                resultItem.ParentManuId = listfather[i].ParentManuId;
                resultItem.OrderNo = listfather[i].OrderNo;
                resultItem.Name = listfather[i].ManuName;
                resultItem.iconCls = listfather[i].Icon;
                resultItem.MIcon = listfather[i].MIcon;
                resultItem.URL = listfather[i].URL;
                List<TreeMenus> Son = GetTreeManus(list, listfather[i]);
                resultItem.children = Son;
                resultList.Add(resultItem);
            }
            return resultList;
        }
        public List<TreeMenus> GetTreeManus(List<RMS_Menus> listAll, RMS_Menus item)
        {
            List<TreeMenus> resultList = new List<TreeMenus>();
            List<RMS_Menus> list = listAll.FindAll(p => p.ParentManuId == item.Id).OrderBy(i => i.OrderNo).ToList();
            for (int i = 0; i < list.Count; i++)
            {

                TreeMenus resultItem = new TreeMenus();
                resultItem.Id = list[i].Id;
                resultItem.ParentManuId = list[i].ParentManuId;
                resultItem.OrderNo = list[i].OrderNo;
                resultItem.Name = list[i].ManuName;
                resultItem.iconCls = list[i].Icon;
                resultItem.MIcon = list[i].MIcon;
                resultItem.URL = list[i].URL;
                List<TreeMenus> Son = GetTreeManus(listAll, list[i]);
                resultItem.children = Son;
                resultList.Add(resultItem);
            }
            return resultList;
        }




    }
}
