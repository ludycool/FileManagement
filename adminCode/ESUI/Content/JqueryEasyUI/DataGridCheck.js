var DataGridCheck = {//DataGridѡ�����
    Idfield: 'Id',//Id����
    dataGridSelecttor: '#dg',//datagridѡ����
    checkedItems: [],//ѡ�������
    addcheckItem: function () {//�����
        var row = $(DataGridCheck.dataGridSelecttor).datagrid('getChecked');
        for (var i = 0; i < row.length; i++) {
            if (DataGridCheck.findCheckedItem(row[i][DataGridCheck.Idfield]) == -1) {
                DataGridCheck.checkedItems.push(row[i]);
            }
        }
    }, removeSingleItem: function (rowIndex, rowData) {//�Ƴ�����
        var k = DataGridCheck.findCheckedItem(rowData[DataGridCheck.Idfield]);
        if (k != -1) {
            DataGridCheck.checkedItems.splice(k, 1);
        }
    },
    removeAllItem: function (row) {//�Ƴ�����
        for (var i = 0; i < row.length; i++) {
            var k = DataGridCheck.findCheckedItem(row[i][DataGridCheck.Idfield]);
            if (k != -1) {
                DataGridCheck.checkedItems.splice(k, 1);
            }
        }
    },
    SetcheckItem: function (dataGridSelecttor, Idfield) {//����ѡ��
        for (var i = 0; i < DataGridCheck.checkedItems.length; i++) {
            $(DataGridCheck.dataGridSelecttor).datagrid('selectRecord', DataGridCheck.checkedItems[i][DataGridCheck.Idfield]); //����idѡ���� 
        }
    },
    findCheckedItem: function (IdValue) {//�Ƿ����
        for (var i = 0; i < DataGridCheck.checkedItems.length; i++) {
            if (DataGridCheck.checkedItems[i][DataGridCheck.Idfield] == IdValue) return i;
        }
        return -1;
    }

};