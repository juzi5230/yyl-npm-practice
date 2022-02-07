<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<title></title>
<style type="text/css">
* {
  padding: 0;
  margin: 0;
}
  body {
    font-family: SimSun;
    font-size: 12px;
    margin: 0;
  }
  body { -webkit-print-color-adjust: exact; }
  .cover {
    font-size: 48px;
    font-weight: bold;
    position: absolute;
    width: 100%;
    height: 100%;
    background: url('./bg.png');
    background-size: 100% 100%;
    background-repeat: no-repeat;
    background-color: lightblue;
    font-family: PingFangSC-Semibold, PingFang SC;
    font-weight: 600;
    color: #FFFFFF;
    line-height: 67px;
    box-sizing: border-box;
  }
  .flag {
    margin: 28px;
  }
  .data-name {
    width: 100%;
    text-align: center;
    margin: 0 auto;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    padding: 0 166px;
    box-sizing: border-box;
  }
  .placeholder {
    width: 300px;
    height: 4px;
    background: #FFFFFF;
    border-radius: 2px;
    margin: 24px auto;
  }
  .flag {
    margin: 28px;
    width: 184px;
    height: 60px;
    background: url('./logo.png');
    background-repeat: no-repeat;
    background-size: 100% 100%;
  }
</style>
</head>
<body>
  <div class="cover">
    <div class="flag"></div>
    <div class="data-name">
      <div class="location">${data.provName}</div>
      <div class="location">${data.dcName}</div>
      <div class="placeholder"></div>
      <div class="room-name">${data.roomName}</div>
      <div class="room-name">数据质量报告</div>
    </div>
  </div>
</body>
</html>