<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<title></title>
<style type="text/css">
body {
    font-family: SimSun;
    font-size: 12px;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

td {
    
}

.table {
    margin-top: 0;
    margin-right: auto;
    margin-bottom: 80;
    margin-left: auto;
}

.table td {
    border: 1px solid #333333;
    border-collapse: collapse;
    padding: 7px;
}

.table1 {
    margin-top: 0;
    margin-right: auto;
    margin-left: auto;
}

.table1 td {
    border: 0px solid #333333;
    border-collapse: collapse;
    padding: 7px;
}

.odct_zhangpic {
    width: 160px;
    height: 160px;
    position: absolute;
    margin-top: -110px;
    clear: both;
    float: none;
    margin-left: 400px;
}
.break-page {
   page-break-after: always;
   background: lightblue;
}
</style>
</head>

<body>
    <div class="cover break-page">
      ${reportName}
    </div>
    <div class="break-page catalogue">
      <title>目录</title>
      <h1>122</h1>
      <h1>122</h1>
      <h1>122</h1>
      <h1>122</h1>
      <a href="#123333">000000</a>

      <#list data as detail>
        <p>${detail.title}
        <#list detail.children as child>
          <a href="#${child.title}">${child.title}
        </#list>
      </#list>
    </div>

    <#list data as detail>      
      <div>
        <div>${detail.title}
        <#list detail.children as child>
          <a href="#${child.title}">${child_index + 1} ${child.title}
        </#list>
      </div>
    </#list>


    <table width="96%" border="0" align="center" cellspacing="0" class="break-page">
        <tr>
            <td align="right">
                <img src="http://www.10000show.com/static/index/images/logo.png" width="124" height="62"></img>
                </td>
        </tr>
        <tr>
            <td height="90" align="center"><h2>reportName</h2></td>
        </tr>
    </table>
  
    
    <table width="96%" border="0" align="center" cellspacing="0" cellpadding="0" class="table break-page">
     <h2><strong>商品信息</strong></h2>
               <tr>
                   <td>编号</td>
                    <td>名称</td>
                    <td>类型</td>
                    <td>时间</td>
                    <td>地点</td>
                    <td>展馆</td>
                </tr>
                <tr>
                      <td>${propA }</td>
                         <td>
                           <p>${propA }</p>
                     </td>
                         <td> 
                          ${propA }
                      </td>
                </tr>
    </table>
        <table width="96%" border="0" align="center" cellspacing="0" cellpadding="0" class="table break-page">
     <h2><strong>商品信息</strong></h2>
               <tr>
                   <td>编号</td>
                    <td>名称</td>
                    <td>类型</td>
                    <td>时间</td>
                    <td>地点</td>
                    <td>展馆</td>
                </tr>
                <tr>
                      <td>${propA }</td>
                         <td>
                           <p>${propA }</p>
                     </td>
                         <td> 
                          ${propA }
                      </td>
                </tr>
    </table>
        <table width="96%" border="0" align="center" cellspacing="0" cellpadding="0" class="table break-page">
     <h2><strong>商品信息</strong></h2>
               <tr>
                   <td>编号</td>
                    <td>名称</td>
                    <td>类型</td>
                    <td>时间</td>
                    <td>地点</td>
                    <td>展馆</td>
                </tr>
                <tr>
                      <td id="123333">${propA }</td>
                         <td>
                           <p>${propA }</p>
                     </td>
                         <td> 
                          ${propA }
                      </td>
                </tr>
    </table>
</body>
</html>