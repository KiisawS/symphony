<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel}">
        <meta name="description" content="${symDescriptionLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/index.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}">
    </head>
    <body class="index">
        <#include "header.ftl">   
        <div class="main">
            <div class="wrapper">
                <div class="index-main">
                    <div class="index-tabs fn-flex" id="articles">
                        <span class="current">
                            <span class="icon-clock"></span> ${latestLabel}
                        </span>
                        <span class="tags">
                            <span class="icon-tags"></span>
                            ${followingTagsLabel}
                        </span>
                        <span class="users">
                            <span class="icon-userrole"></span>
                            ${followingUsersLabel}
                        </span>
                    </div>
                    <div class="index-tabs-panels list article-list">
                        <ul>
                            <#list recentArticles as article>
                                <#include "common/list-item.ftl">
                            </#list>
                            <#if recentArticles?size == 0>
                                ${systemEmptyLabel}<br>
                                ${systemEmptyTipLabel}<br> 
                                <img src="${staticServePath}/images/404/5.gif"/>          
                            </#if>
                        </ul>
                        <ul class="fn-none">
                            <#list followingTagArticles as article>
                                <#include "common/list-item.ftl">
                            </#list>
                            <#if isLoggedIn && followingTagArticles?size == 0>
                                <li class="ft-center">
                                    ${noFollowingTagLabel}<br>
                                    ${noFollowingTagTipLabel}<br> 
                                    <img src="${staticServePath}/images/404/6.gif"/>     
                                </li>  
                            </#if>
                            <#if !isLoggedIn>
                                <li class="ft-center">
                                    ${noLoginLabel}<br>
                                    ${noLoginTipLabel}<br> 
                                    <img src="${staticServePath}/images/404/6.gif"/>     
                                </li>  
                            </#if>
                        </ul>
                        <ul class="fn-none">
                            <#list followingUserArticles as article>
                                <#include "common/list-item.ftl">
                            </#list>
                            <#if isLoggedIn && followingUserArticles?size == 0>
                                <li class="ft-center">
                                    ${noFollowingUserLabel}<br>
                                    ${noFollowingUserTipLabel}<br> 
                                    <img src="${staticServePath}/images/404/2.gif"/>     
                                </li> 
                            </#if>
                            <#if !isLoggedIn>
                                <li class="ft-center">
                                    ${noLoginLabel}<br>
                                    ${noLoginTipLabel}<br> 
                                    <img src="${staticServePath}/images/404/2.gif"/>     
                                </li>   
                            </#if>
                        </ul>
                    </div>
                </div>
                <div class="index-side">
                    <div class="index-tabs fn-flex">
                        <span class="perfect current">
                            <svg height="16" viewBox="3 2 11 12" width="14">${perfectIcon}</svg>
                            ${perfectLabel}
                        </span>
                        <span class="check">
                            <#if isLoggedIn && !isDailyCheckin>
                            <a href="<#if useCaptchaCheckin>${servePath}/activity/checkin<#else>${servePath}/activity/daily-checkin</#if>">${dailyCheckinLabel}</a>
                            <#else>
                            <a href="${servePath}/activities">
                                ${activityLabel}
                            </a>
                            </#if>
                        </span>
                        <span class="post"><a href="${servePath}/post?type=0">${postArticleLabel}</a></span>
                    </div>
                    <div class="perfect-panel list">
                        <ul>
                            <#list perfectArticles as article>
                            <li>
                                <a rel="nofollow" href="${servePath}/member/${article.articleAuthorName}">
                                    <span class="avatar-small tooltipped tooltipped-se" aria-label="${article.articleAuthorName}" style="background-image:url('${article.articleAuthorThumbnailURL48}')"></span>
                                </a>
                                <a rel="nofollow" class="fn-ellipsis ft-a-title" href="${servePath}${article.articlePermalink}">${article.articleTitleEmoj}</a>
                                <a class="fn-right count ft-gray ft-smaller" href="${servePath}${article.articlePermalink}">${article.articleViewCount}</a>
                            </li>
                            </#list>
                            <#if perfectArticles?size == 0>
                                <li>${chickenEggLabel}</li>
                            </#if>
                        </ul>
                    </div>
                </div>
            </div>
            <div>
                <br/><br/>
            </div>
            <div class="wrapper">
                <div class="index-main">
                    <div class="metro-line fn-flex">
                        <div class="metro-item">
                            <a class="preview" href="${servePath}/tag/${tag0.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag0.tagIconPath}" alt="${tag0.tagTitle}">
                                <b>${tag0.tagTitle}</b>
                            </a>
                        </div>
                        <div class="metro-item mid">
                            <a class="preview" href="${servePath}/tag/${tag1.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag1.tagIconPath}" alt="${tag1.tagTitle}">
                                <b>${tag1.tagTitle}</b>
                            </a>
                        </div>
                        <div class="metro-item">
                            <a class="preview" href="${servePath}/tag/${tag2.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag2.tagIconPath}" alt="${tag2.tagTitle}">
                                <b>${tag2.tagTitle}</b>
                            </a>
                        </div>
                    </div>
                    <div class="metro-line fn-flex">
                        <div class="metro-item">
                            <a class="preview" href="${servePath}/tag/${tag3.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag3.tagIconPath}" alt="${tag3.tagTitle}">
                                <b>${tag3.tagTitle}</b>
                            </a>
                        </div>
                        <div class="metro-item mid">
                            <a class="preview" href="${servePath}/tag/${tag4.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag4.tagIconPath}" alt="${tag4.tagTitle}">
                                <b>${tag4.tagTitle}</b>
                            </a>
                        </div>
                        <div class="metro-item">
                            <a class="preview" href="${servePath}/tag/${tag5.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag5.tagIconPath}" alt="${tag5.tagTitle}">
                                <b>${tag5.tagTitle}</b>
                            </a>
                        </div>
                    </div>
                    <div class="metro-line fn-flex">
                        <div class="metro-item">
                            <a class="preview" href="${servePath}/tag/${tag6.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag6.tagIconPath}" alt="${tag6.tagTitle}">
                                <b>${tag6.tagTitle}</b>
                            </a>
                        </div>
                        <div class="metro-item mid">
                            <a class="preview" href="${servePath}/tag/${tag7.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag7.tagIconPath}" alt="${tag7.tagTitle}">
                                <b>${tag7.tagTitle}</b>
                            </a>
                        </div>
                        <div class="metro-item">
                            <a class="preview" href="${servePath}/tag/${tag8.tagURI}">
                                <img src="${staticServePath}/images/tags/${tag8.tagIconPath}" alt="${tag8.tagTitle}">
                                <b>${tag8.tagTitle}</b>
                            </a>
                        </div>
                    </div>
                    <div class="metro-border fn-flex">
                        <div></div>
                        <div class="red"></div>
                        <div class="green"></div>
                    </div>
                </div>
                <div class="index-side down">
                    <div class="list timeline ft-gray single-line">
                        <ul>
                            <#if timelines?size <= 0>
                            <li id="emptyTimeline">${emptyTimelineLabel}</li>
                            </#if>
                            <#list timelines as article>
                            <#if article_index < 20>
                            <li>
                                ${article.content}
                            </li>
                            </#if>
                        </#list>
                    </ul>
                </div>
                <div class="metro-line fn-flex">
                    <div class="metro-item ad"> ${ADLabel}</div>
                    <div class="metro-item last">
                        <a class="preview" href="https://hacpai.com/article/1460083956075">
                            <img width="44px" src="${staticServePath}/js/lib/emojify.js-1.1.0/images/basic/heart.png" alt="${sponsorLabel}">
                            <b>${wantPutOnLabel}</b>
                        </a>
                    </div>
                </div>
                <div class="metro-border fn-flex">
                    <div></div>
                    <div class="yellow"></div>
                </div>
            </div>
        </div>
    </div>
    <#include "footer.ftl">   
    <script type="text/javascript" src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script> 
    <script type="text/javascript">
        $('.metro-item').height($('.metro-item').width());
        $('.timeline ul').outerHeight($('.metro-item').width() * 2 + 2 - 30);

        // tab
        $('#articles span').click(function () {
            var $it = $(this);
            $('#articles span').removeClass('current');
            $it.addClass('current');

            $(".index-tabs-panels.article-list ul").hide();
            if ($it.hasClass('tags')) {
                $(".index-tabs-panels.article-list ul:eq(1)").show();
            } else if ($it.hasClass('users')) {
                $(".index-tabs-panels.article-list ul:eq(2)").show();
            } else {
                $(".index-tabs-panels.article-list ul:eq(0)").show();
            }
        });

        // tag click
        $('.preview, .index-tabs > span').click(function (event) {
            var $it = $(this),
            maxLen = Math.max($it.width(), $it.height());
            $it.prepend('<span class="ripple" style="top: ' + (event.offsetY - $it.height() / 2)
                + 'px;left:' + (event.offsetX - $it.width() / 2) + 'px;height:' + maxLen + 'px;width:' + maxLen + 'px"></span>');
            console.log(event)

            setTimeout(function () {
                $it.find('.ripple').remove();
            }, 800);
        });

        // Init [Timeline] channel
        TimelineChannel.init("${wsScheme}://${serverHost}:${serverPort}${contextPath}/timeline-channel", 20);
    </script>
</body>
</html>
