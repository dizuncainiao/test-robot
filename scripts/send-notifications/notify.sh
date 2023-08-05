#!/bin/sh

curl 'https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key='$TEST_ROBOT_WB \
       -H 'Content-Type: application/json' \
       -d '
       {
           "msgtype": "markdown",
           "markdown": {
               "content": "**<font color=\"warning\">前端发版通知</font>**
                >项目名称: 业务组件库 bdsaas-bc
                >最新版本: <font color=\"info\">1.0.0</font>
                >更新日志: [点击查看](https://dizuncainiao.github.io/business-components/change-log/)
                >任务已构建完成，请及时更新: <@所有人>【不回复】

                ## [0.0.22](https://github.com/dizuncainiao/business-components/compare/v0.0.21...v0.0.22) (2023-08-04)

                ### 🐛 Bug Fixes
                1. 优化调整音频播放的处理方式，使其更流畅的切换 ([4f3791f](https://github.com/dizuncainiao/business-components/commit/4f3791f))

                ### 🚀 Performance Improvements
                1. 拨号条组件布局细节优化 ([33518c9](https://github.com/dizuncainiao/business-components/commit/33518c9))
                ",
           },
       }'
