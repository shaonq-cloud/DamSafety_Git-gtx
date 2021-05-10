<%--
  Created by IntelliJ IDEA.
  User: zhangjin
  Date: 2019/10/21
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../include/headInc.jsp" %>
    <title>电科院有限元分析</title>
    <style>
        .mt-50 {
            margin-top: 50px;
        }

        .mt-60 {
            margin-top: 60px;
        }

        .mt-80 {
            margin-top: 80px;
        }

        .width-100 {
            width: 100%;
        }

        .c-vertical {
            display: flex;
            align-items: center;
        }
    </style>
</head>
<body>
<%@ include file="../../include/stnHeadNav.jsp" %>


<div class="container-fluid">
    <div class="form-inline">
        <div class="col-md-3 col-md-offset-1">
            <div class="row mt-60">
                <div class="col-md-6 ">
                    <button class="btn btn-primary width-100">计算时间</button>
                </div>
                <div class="col-md-6">
                    <select class="form-control input-sm" style="width: 100%">
                    </select>
                </div>
            </div>
            <div class="row mt-80">
                <div class="col-md-6">
                    <button class="btn btn-primary right width-100">计算坝段</button>
                </div>
                <div class="col-md-6">
                    <select name="" id="dam" class="form-control " style="width: 100%;height: 280px;" multiple>
                    </select>
                </div>
            </div>
            <div class="row mt-50 c-vertical" style="background-color: #F5F5F5;height: 71px;">
                <div class="col-md-12" style="text-align: center;">
                    <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox1" value="溢流坝段"> 溢流坝段
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2" value="挡水坝段"> 挡水坝段
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox3" value="整段"> 整段
                    </label>
                </div>
            </div>
            <div class="row mt-50">
                <div class="col-md-6">
                    <button class="btn btn-primary right width-100">计算</button>
                </div>
                <div class="col-md-6">
                    <div style="text-align: center">
                        <label class="radio-inline ">
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="位移解">位移解
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="应力解">应力解
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="col-md-offset-2 text-center">
                <img src="../../../images/dky/stress.png" alt="" style="width: 100%;margin-top: 80px;margin-left: 220px;">
            </div>
        </div>
    </div>
</div>

</body>
<script>
    let defaultDate = document.querySelectorAll('input[type=date]');
    for (let i = 0; i < defaultDate.length; i++) {
        defaultDate[i].valueAsDate = new Date();
    }
</script>
</html>