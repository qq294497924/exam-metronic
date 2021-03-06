<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>专业信息管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/style-metro.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/style.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/jquery-ui-1.10.1.custom.min.css" />

    <%--
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/bootstrap-modal.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/style-responsive.css" />
   --%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/select2_metro.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/media/css/DT_bootstrap.css" />

    <link rel="shortcut icon" href="<%=request.getContextPath()%>/media/image/favicon.ico" />

    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/public.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/jquery-ui-1.10.1.custom.min.js" ></script>
    <%--
    <script type="text/javascript" rc="<%=request.getContextPath()%>/media/js/jquery-migrate-1.2.1.min.js" ></script>--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/DT_bootstrap.js"></script>
    <%--
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/date.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/daterangepicker.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/bootstrap-modal.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/bootstrap-modalmanager.js"></script>
    --%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/date.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/app.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/select2.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/jquery.validate.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/media/js/specialityInfo.js"></script>



</head>
<body class="">
<div class="container-fluid">
    <h5 class="page-title">
        专业信息管理
    </h5>


    <div class="row-fluid">
        <div class="span12">


            <!-- BEGIN EXAMPLE TABLE PORTLET-->
            <div class="portlet box grey">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-edit"></i>专业列表
                    </div>
                    <div class="actions" >
                        <a href="#myModal1" class="btn blue" data-toggle="modal" style="padding: 5px 7px;margin-top: -11px;">
                            新增专业信息<i class="icon-plus"></i>
                        </a>
                    </div>
                </div>

                <div class="portlet-body form">
                    <div class="form-horizontal">
                        <div class="row-fluid">
                            <div class="span3">
                                <div class="control-group">
                                    <label class="control-label" >
                                        所属学院：
                                    </label>
                                    <div class="controls">
                                        <select class="span12 select2_category" data-placeholder="选择所属学院" tabindex="1" id="collegeIdSearch">

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="span3">
                                <div class="control-group">
                                    <label class="control-label" >
                                        专业学制：
                                    </label>
                                    <div class="controls">
                                        <select class="span12 select2_category" data-placeholder="选择专业学制" tabindex="1" id="speYearSearch">

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="span3">
                                <div class="control-group">
                                    <label class="control-label" >
                                        专业名称：
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="m-wrap span12" placeholder="填写专业名称" id="speNameSearch">
                                    </div>
                                </div>
                            </div>
                            <div class="span3">
                                <div class="control-group">
                                    <button id="searchBtn" class="btn purple">
                                        查询专业信息 <i class="m-icon-swapright m-icon-white"></i>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <%--<div class="inline">
                            <input type="text" class="form-control inline" id="collegeNameSch" style="height: 34px;">
                            <button id="searchBtn" class="btn purple inline">
                                查询 <i class="m-icon-swapright m-icon-white"></i>
                            </button>
                        </div>--%>
                    </div>

                    <table class="table table-striped table-hover table-bordered" id="specialityInfoTable"
                           style="table-layout: auto">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th style="width: 20%">专业名称</th>
                            <th style="width: 20%">所属学院</th>
                            <th style="width: 20%">专业学制</th>
                            <th style="width: 30%">专业简介</th>
                            <th style="width: 10%">操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
            <%--新增信息begin--%>
            <div id="myModal1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h3 id="myModalLabel1">新增专业信息</h3>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="insertForm" action="#">
                        <div class="control-group">
                            <label class="control-label">专业名称:</label>
                            <div class="controls">
                                <div class="input-icon left">
                                    <input type="text" class="m-wrap span8" id="specialityName" name="specialityName">
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">所属学院:</label>
                            <div class="controls">
                                <div class="input-icon left">
                                    <select class="span8 select2_category" data-placeholder="选择所属学院" tabindex="1" id="collegeId" name="collegeId">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">专业学制:</label>
                            <div class="controls">
                                <div class="input-icon left">
                                    <select class="span8 select2_category" data-placeholder="选择专业学制" tabindex="1" id="speyearsId" name="speyearsId">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">创建日期:</label>
                            <div class="controls">
                                <div class="input-append date date-picker " data-date-format="yyyy/mm/dd"
                                     data-date-viewmode="years">
                                    <div class="input-icon left">
                                        <input class="m-wrap m-ctrl-medium date-picker" readonly="true" size="16"
                                               type="text" value="" style="height: 34px" id="createDate" name="createDate"/>
                                        <span class="add-on"><i class="icon-calendar"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">学院介绍:</label>
                            <div class="controls">
                                <div class="input-icon left">
                                    <textarea class="m-wrap span10" rows="3" id="comment" name="comment"></textarea>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="msg"></div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                    <button class="btn blue" id="saveBtn">保存</button>
                </div>
            </div>
            <%--新增信息end--%>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">

        </div>
    </div>


</div>
<div>

</div>
</body>
</html>
