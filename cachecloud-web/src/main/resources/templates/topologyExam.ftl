<!DOCTYPE html>
<head>
    <meta charset=UTF-8/>
    <title>应用拓扑检查日报</title>
</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<p>
<table style="width:100%; font-size:12px;" width="100%" cellpadding="0" cellspacing="0">
    <colgroup>
        <col style="width: 5px;">
    </colgroup>
    <tr>
        <td></td>
        <td style="padding-top:20px; padding-left:27px;">
        	<ul>
                <li><span style="font-weight: bold; padding-top:20px; color:#3f3f3f;">online应用拓扑检查情况：</span></li>
            </ul>
            <table style="table-layout:fixed;width: 872px;border-collapse: collapse;word-break: break-all;word-wrap:break-word;border-top: 1px dotted #676767;text-align: center;color: #000; font-family:'宋体'; font-size:12px; margin-top:10px; margin-left: 24px">
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        appId
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        应用类型
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        问题
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        描述
                    </td>
                </tr>
                <#list examResult as item>
                    <tr>
                        <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                            ${item['appId']?c}
                        </td>
                        <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                            ${item['type']}
                        </td>
                        <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                            ${item['status']}
                        </td>
                        <td align="left" style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 100px;">
                            <#list item['desc']?split("\n") as str>
                                ${str}<br/>
                            </#list>
                        </td>
                    </tr>
                </#list>
            </table>
            
        </td>
    </tr>

</table>
</p>
</body>
</html>