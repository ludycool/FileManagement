
function addTab(subtitle, URL, iconCls) {
    if (!parent.$('#tabs').tabs('exists', subtitle)) {
        parent.$('#tabs').tabs('add', {
            title: subtitle,
            content: createFrame(URL),
            closable: true,
            icon: iconCls
        });
        //parent.$('#tabs').tabs("add", {
        //    title: 'ff',
        //    content: 'fdsf',
        //    closable: true
        //});
    } else {
        parent.$('#tabs').tabs('select', subtitle);
        parent.$('#mm-tabupdate').click();
    }
  //  tabClose();
}

function tabClose() {
    /* 双击关闭TAB选项卡 */
    $(".tabs-inner").dblclick(function () {
        var subtitle = $(this).children(".tabs-closable").text();
        $('#tabs').tabs('close', subtitle);
    });
    /* 为选项卡绑定右键 */
    $(".tabs-inner").bind('contextmenu', function (e) {
        $('#mm').menu('show', {
            left: e.pageX,
            top: e.pageY
        });

        var subtitle = $(this).children(".tabs-closable").text();

        $('#mm').data("currtab", subtitle);
        $('#tabs').tabs('select', subtitle);
        return false;
    });
}

function createFrame(URL) {
    var s = '<iframe scrolling="auto"  frameborder="0"  src="' + URL + '" style="width:100%;height:99.5%;overflow-y: hidden"></iframe>';
    return s;
}