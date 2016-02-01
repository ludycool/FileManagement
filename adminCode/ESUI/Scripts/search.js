var colFilter = [["col1", "�ֶ�1", "n"], ["col2", "�ֶ�2", "s"], ["col3", "�ֶ�3", "s"], ["col4", "�ֶ�4", "s"], ["col5", "�ֶ�5", "s"], ["col6", "�ֶ�6", "d"], ["col7", "�ֶ�7", "s"]];
var opFilter = [["=", "����"], ["<", "С��"], ["<=", "С�ڵ���"], [">", "����"], [">=", "���ڵ���"], ["<>", "������"], ["like", "������"]];
var logicFilter = [["and", "����"], ["or", "����"]];
var contentId = 0;

function findData() {
    where = " where (";
    var colname = "";
    var coltype = "";
    var colRealname = "";
    var opname = "";
    var text = "";
    var logicname = "";
    for (var i = 0 ; i < contentId ; i++) {
        if ($("#checkbox" + i)[0] == undefined)
            continue;
        if ($("#text" + i)[0].value == "") {
            $.messager.alert("��ʾ", "����д��ѯ����", "info");
            return;
        }
        colname = $("#col" + i)[0].value;
        opname = $("#op" + i)[0].value;
        text = $("#text" + i)[0].value;
        if (opname == "like") {
            text = "%" + text + "%";
        }
        logicname = $("#logic" + i)[0].value;
        coltype = getColType(colname);
        colRealname = getColRealname(colname);
        switch (coltype) {
            case "s":
                where += colname + " " + opname + " '" + text + "' " + logicname + " ";
                break;
            case "n":
                if (opname != "like") {
                    text = parseInt($("#text" + i)[0].value);
                    if (isNaN(text)) {
                        $.messager.alert("��ʾ", colRealname + "Ӧ��������", "info");
                        return;
                    }
                    where += colname + " " + opname + " " + text + " " + logicname + " ";
                } else {
                    where += colname + " " + opname + " '" + text + "' " + logicname + " ";
                }
                break;
            case "d":
                where += "to_date(to_char(" + colname + ",'yyyy-MM-dd'),'yyyy-MM-dd') " + opname + " to_date('" + text + "','yyyy-MM-dd') " + logicname + " ";
                break;
            default:
                $.messager.alert("��ʾ", "����δ֪��������", "info");
                return;
        }
    }
    where += "1=1)";
    alert(where);

    closeDiv();
}

function getColType(col) {
    for (var i = 0 ; i < colFilter.length ; i++) {
        if (colFilter[i][0] == col) {
            return colFilter[i][2];
        }
    }
    return undefined;
}

function getColRealname(col) {
    for (var i = 0 ; i < colFilter.length ; i++) {
        if (colFilter[i][0] == col) {
            return colFilter[i][1];
        } else {
            return undefined;
        }
    }
}

function addFilter() {
    var html = "<tr id=\"tr" + contentId + "\">";

    html += "<td>";
    html += "<input type=\"checkbox\" id=\"checkbox" + contentId + "\">";
    html += "</td>";

    html += "<td>";
    html += "<select id=\"col" + contentId + "\" class=\"easyui-combobox\" name=\"col" + contentId + "\" style=\"width:200px;\">";
    for (var i = 0 ; i < colFilter.length ; i++) {
        html += "<option value=\"" + colFilter[i][0] + "\">" + colFilter[i][1] + "</option>";
    }
    html += "</select>";
    html += "</td>";

    html += "<td>";
    html += "<select id=\"op" + contentId + "\" class=\"easyui-combobox\" name=\"op" + contentId + "\" style=\"width:200px;\">";
    for (var i = 0 ; i < opFilter.length ; i++) {
        html += "<option value=\"" + opFilter[i][0] + "\">" + opFilter[i][1] + "</option>";
    }
    html += "</select>";
    html += "</td>";

    html += "<td>";
    html += "<input type=\"text\" id=\"text" + contentId + "\">";
    html += "</td>";

    html += "<td>";
    html += "<select id=\"logic" + contentId + "\" class=\"easyui-combobox\" name=\"logic" + contentId + "\" style=\"width:200px;\">";
    for (var i = 0 ; i < logicFilter.length ; i++) {
        html += "<option value=\"" + logicFilter[i][0] + "\">" + logicFilter[i][1] + "</option>";
    }
    html += "</select>";
    html += "</td>";

    html += "</tr>";
    $("#filterContent").append(html);
    $("#op" + contentId).attr("value", "like");

    if (getColType($("#col" + contentId)[0].value) == "n") {
        $("#text" + contentId).bind("keypress", function (sender) {
            if (isNaN(parseInt(String.fromCharCode(sender.keyCode)))) {
                $.messager.alert("��ʾ", "����������", "info");
                return false;
            } else {

            }
        });
    }

    $("#col" + contentId).bind("change", contentId, function (sender) {
        var colType = getColType(this.value);
        switch (colType) {
            case "s":
                $("#text" + sender.data).unbind("click");
                $("#text" + sender.data).unbind("keypress");
                break;
            case "n":
                $("#text" + sender.data).bind("keypress", function (sender) {
                    if (isNaN(parseInt(String.fromCharCode(sender.keyCode)))) {
                        $.messager.alert("��ʾ", "����������", "info");
                        return false;
                    } else {

                    }
                });
                break;
            case "d":
                $("#text" + sender.data).bind("click", function () { WdatePicker(); });
                break;
            default:
                $("#text" + sender.data).unbind("click");
                $("#text" + sender.data).unbind("keypress");
        }
    });
    contentId += 1;
}

function delFilter() {
    var ischeck = 0;
    for (var i = 0 ; i < contentId ; i++) {
        if ($("#checkbox" + i)[0] == undefined)
            continue;
        if ($("#checkbox" + i)[0].checked)
            ischeck += 1;
    }
    if (ischeck == 1) {
        var selectId = 0;
        for (var i = 0 ; i < contentId ; i++) {
            if ($("#checkbox" + i)[0] == undefined)
                continue;
            if ($("#checkbox" + i)[0].checked) {
                selectId = i;
                break;
            }
        }
        $("#tr" + selectId).remove();
    } else {
        $.messager.alert("��ʾ", "��ѡ��һ������", "info");
    }
}

function upFilter() {
    $.messager.alert("��ʾ", "�ù����ѱ�����", "info");
}

function downFilter() {
    $.messager.alert("��ʾ", "�ù����ѱ�����", "info");
}

function clearFilter() {
    for (var i = 0 ; i < contentId ; i++) {
        if ($("#checkbox" + i)[0] == undefined)
            continue;
        $("#tr" + i).remove();
    }
    contentId = 0;
}