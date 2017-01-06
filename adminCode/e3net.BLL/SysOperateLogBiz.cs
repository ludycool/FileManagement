﻿
using e3net.common;
using e3net.DAL;
using e3net.IDAL;
using e3net.Mode;
using e3net.Mode.FileManagementDB;
using Moon.Orm;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Text;

namespace e3net.BLL
{
    /// <summary>
    /// 操作日志
    /// </summary>
    public class SysOperateLogBiz : BaseDao<TF_SysOperateLog>, ITF_SysOperateLogDao
    {
        /// <summary>
        /// 记录操作
        /// </summary>
        /// <param name="userId">操作人ID</param>
        /// <param name="trueName">操作人姓名</param>
        /// <param name="operateName">操作名称</param>
        /// <param name="operateConten">操作内容</param>
        /// <param name="operateIP">操作人IP</param>
        /// <param name="remark">备注</param>
        /// <param name="isDeleted">是否删除（默认未删除）</param>
        public static void InsertSysOperateLog(string userId, string trueName, string operateName, string operateConten,
            string operateIP, string remark, bool isDeleted = false)
        {
            TF_SysOperateLog log = new TF_SysOperateLog();
            log.Id = Guid.NewGuid();
            log.UserId = userId;
            log.TrueName = trueName;
            log.OperateName = operateName;
            log.OperateTime = DateTime.Now;
            log.OperateConten = operateConten;
            log.OperateIP = operateIP;
            log.isDeleted = isDeleted;
            log.Remark = remark;
            using (var db = Db.CreateDefaultDb())
            {
                db.Add(log);
            }
        }
    }
}
