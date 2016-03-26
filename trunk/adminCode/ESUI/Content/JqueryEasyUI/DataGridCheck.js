var DataGridCheck = {//DataGrid选择操作
    Idfield: 'Id',//Id列名
    dataGridSelecttor: '#dg',//datagrid选择器
    checkedItems: [],//选择的数据
    addcheckItem: function () {//添加项
        var row = $(DataGridCheck.dataGridSelecttor).datagrid('getChecked');
        for (var i = 0; i < row.length; i++) {
            if (DataGridCheck.findCheckedItem(row[i][DataGridCheck.Idfield]) == -1) {
                DataGridCheck.checkedItems.push(row[i]);
            }
        }
    }, removeSingleItem: function (rowIndex, rowData) {//移除单项
        var k = DataGridCheck.findCheckedItem(rowData[DataGridCheck.Idfield]);
        if (k != -1) {
            DataGridCheck.checkedItems.splice(k, 1);
        }
    },
    removeAllItem: function (row) {//移除所有
        for (var i = 0; i < row.length; i++) {
            var k = DataGridCheck.findCheckedItem(row[i][DataGridCheck.Idfield]);
            if (k != -1) {
                DataGridCheck.checkedItems.splice(k, 1);
            }
        }
    },
    SetcheckItem: function (dataGridSelecttor, Idfield) {//设置选中
        for (var i = 0; i < DataGridCheck.checkedItems.length; i++) {
            $(DataGridCheck.dataGridSelecttor).datagrid('selectRecord', DataGridCheck.checkedItems[i][DataGridCheck.Idfield]); //根据id选中行 
        }
    },
    findCheckedItem: function (IdValue) {//是否存在
        for (var i = 0; i < DataGridCheck.checkedItems.length; i++) {
            if (DataGridCheck.checkedItems[i][DataGridCheck.Idfield] == IdValue) return i;
        }
        return -1;
    }

};