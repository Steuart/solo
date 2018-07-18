<#--

    Solo - A beautiful, simple, stable, fast Java blogging system.
    Copyright (c) 2010-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<link type="text/css" rel="stylesheet" href="${staticServePath}/plugins/symphony-interest/style.css"/>
<div id="symphonyInterestPanel">
    <div class="module-panel">
        <div class="module-header">
            <h2>${interestLabel}</h2>
        </div>
        <div class="module-body padding12">
            <div id="symphonyInterest">
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    plugins.symphonyInterest = {
        init: function () {
            $("#loadMsg").text("${loadingLabel}");

            $("#symphonyInterest").css("background",
                    "url(${staticServePath}/images/loader.gif) no-repeat scroll center center transparent");

            $("#loadMsg").text("");
        }
    };

    /*
     * 添加插件
     */
    admin.plugin.add({
        "id": "symphonyInterest",
        "path": "/main/panel1",
        "content": $("#symphonyInterestPanel").html()
    });

    // 移除现有内容
    $("#symphonyInterestPanel").remove();
</script>
