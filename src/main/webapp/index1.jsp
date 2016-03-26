<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <link href="http://www.gbtags.com/gb/networks/uploads/4ac1830e-93b9-482f-816b-92acc3320f77/nav/style/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="http://www.gbtags.com/gb/networks/uploads/4ac1830e-93b9-482f-816b-92acc3320f77/nav/style/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="http://www.gbtags.com/gb/networks/uploads/4ac1830e-93b9-482f-816b-92acc3320f77/nav/style/css/index.css" rel="stylesheet" type="text/css" />
    <title>响应式导航设计</title>
  </head>
  <body>
    <div class="container">
    <div class="hidenav">
      <div class="navbody">
          <div class="navitems">
        <a href="javascript:void(0);" onclick="showfloat(this)" class="btn">
            <span class="icon icon-tasks"></span>
            <span class="nav-text">应用</span>
        </a>
            <div class="navfloat">
              <div class="floatitems">
                <a href="javascript:void(0);" class="btn btn-app btn-info">
                  <span class="icon icon-group"></span>
                  <span class="floattext">好友</span>
                </a>
              </div>
              <div class="floatitems">
                <a href="javascript:void(0);" class="btn btn-app btn-info">
                  <span class="icon icon-comments"></span>
                  <span class="floattext">消息</span>
                </a>
              </div>
              <div class="floatitems">
                <a href="javascript:void(0);" class="btn btn-app btn-info">
                  <span class="icon icon-hand-right"></span>
                  <span class="floattext">挠挠</span>
                </a>
              </div>
              <div class="floatitems">
                <a href="javascript:void(0);" class="btn btn-app btn-info">
                  <span class="icon icon-sitemap"></span>
                  <span class="floattext">群组</span>
                </a>
              </div>
              <div class="floatitems">
                <a href="javascript:void(0);" class="btn btn-app btn-info">
                  <span class="icon icon-book"></span>
                  <span class="floattext">书房</span>
                </a>
              </div>
              <div class="floatitems">
                <a href="javascript:void(0);" class="btn btn-app btn-info">
                  <span class="icon icon-coffee"></span>
                  <span class="floattext">聊吧</span>
                </a>
              </div>
            </div>
          </div>
        <div class="navitems">
          <a href="javascript:void(0);" class="btn">
            <span class="icon icon-user"></span>
            <span class="nav-text">访客</span>
          </a>
        </div>
        <div class="navitems">
          <a href="javascript:void(0);" class="btn">
            <span class="icon icon-globe"></span>
            <span class="nav-text">动态</span>
          </a>
        </div>
        <div class="navitems">
          <a href="javascript:void(0);" class="btn">
            <span class="icon icon-gift"></span>
            <span class="nav-text">礼物</span>
          </a>
        </div>
        <div class="navitems">
          <a href="javascript:void(0);" class="btn">
            <span class="icon icon-cogs"></span>
            <span class="nav-text">设置</span>
          </a>
        </div>
      </div>
      <div class="navtitle">
        <div class="navitems">
          <a href="javascript:void(0);" onclick="shownavs()">
            <span class="icon icon-double-angle-right"></span>
          </a>
        </div>
      </div>
    </div>
    </div>
    <script src="http://cdn.bootcss.com/jquery/2.1.1-rc2/jquery.min.js"></script>
    <script src="http://www.gbtags.com/gb/networks/uploads/4ac1830e-93b9-482f-816b-92acc3320f77/nav/js/tx/index.js"></script>
  </body>
