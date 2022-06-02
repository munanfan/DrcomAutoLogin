# DrcomAutoLogin

**深圳大学校园网自动登录**

材料准备：

支持ssh的路由器（或者管理页面支持定时任务的），我用的是Redmi AX6S（需要自己去开启ssh）

下载DrcomAutoLogin.sh

操作步骤：

（1）修改DrcomAutoLogin.sh中的用户名和密码

（2）使用ssh工具连接上路由器的ssh页面，把`DrcomAutoLogin.sh`找个位置上传上去，我是在根目录`\`下面建立了一个`script`文件夹。

（3）给文件赋予执行权限:

`chmod +x DrcomAutoLogin.sh`

（4）使用crontab设置定时任务，我设置的是每10分钟运行一次脚本，检查网络是否畅通，如果不畅通，就执行连接:

输入`crontab -e`进入编辑页面，输入`*/10 * * * * 脚本的绝对路径`

使用自己的绝对路径替换上面的文字，比如我的DrcomAutoLogin的绝对路径是`/scrpit/DrcomAutoLogin.sh`直接替换就行。

（5）重启cron服务，我的路由器cron的服务名字也是cron，也有可能是crond，使用下面的命令重启一下服务，然后就可以愉快地上网，再也不用担心人在远方，宿舍断网了。

`service cron restart`
