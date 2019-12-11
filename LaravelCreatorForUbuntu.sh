#!/usr/bin/bash

# Copyright (c) 2019, Yuma Obata
# All rights reserved.

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:

# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# The views and conclusions contained in the software and documentation are those
# of the authors and should not be interpreted as representing official policies,
# either expressed or implied, of the FreeBSD Project.


#文字色定義
colorred="\033[31m"
colorpowder_blue="\033[1;36m" #with bold
colorblue="\033[34m"
colornormal="\033[0m"
colorwhite="\033[97m"
colorlightgrey="\033[90m"
colorgreen="\033[32m"

#AA表示
printf "${colorred} Welcome to MiSAKA Laravel Environment Creator!!  This shell version will be the initial version, so please contact the author email "umaxiaotian@gmail.com" if it doesn't work. \n ${colornormal}"
cat <<"EOF"

　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 　 　 ＿,∠)
　　　　　　　　　　　　　　　　　　　　　　---　 .._　　　　／{／{／／
　　　　　 　 　 　 　 　 　 　 ,ﾊ,. : ´: : : : : : : : : : :｀丶、´／ ／∠
Laravel + Apache + PHP __,､rﾍ(　{／. : : : : : : : : : : : : : : :＼／／／
　　　　 　 　 　 　 _r仁ﾌ 〉 }ﾞY. : : : : : : : ／: : : : : : : : : : :〈〆
　　　　　 　 　 　 {〈 ﾋ^ 丿,ﾊﾉ. : : : : :/ / : : : :/: /: /: }:!: : :',`￣＼
　　　　　　 　 　 厶｀ﾆ´／ 厶/: : : :/'７T: : :メ､/: / : 从: : : ,　　　il
　　　　　 　 　 ‘'⌒ｱて イ^'7 : : : :' _厶:!≦7:/＾:/ _:厶i:l: : : i＿＿j|
　　　　　　　　　／ : ∮{人/: ／ : i 7´_}i:ｘ!j/}／}ﾊ厶 从: : ｉ|￣￣´
　　　　　 ｰ=≦. :／. :；ⅰ{'イ{/{: 从{､乂:ヅ　　　 ｲ}ix!Ⅵｉ : ﾘ
　　　　　　　 / /. : /.* ；人丶人{　､ ､ 、　 　 　 ｛'ｰ'ﾞﾉ从从
　 　 　 　 　 { :{ {: :{: :；: : ／>､`ﾍ　　　　　　　　 　 　 }/}/
　　 　 　 　 人乂: :〈: : :/ /: /个ﾍ、　　　　　 , ，　　,ハ
　　　　　 　 　 　 ＼{＼{: {: :{ : ｉ :/介: . 　 　 　 　 ／从{
　　　　　　　 　 　 　 ／)人 ∨|//从 　 　 :ｧ=:ｧ:'＾ﾊ/
　 　 　 　 　 　 　 ／／／　)ﾊ:}人(: :丶　 〈`'く}人{              Ubuntu
　　 　 　 , (＼ ／／／　　／ . :＼ : : : :＼_}ﾍ: :＼
　 　 　 ,厶 ﾍ, `く／　　／. : : : : : :丶: : : : :＼}:,(⌒ヽ、
　　　 ,m､ ＼〉　 ', 　,.' . : : : : : : : : : : : : : : : :〈　 :※ハ
　　 ,m‐ ､＼_) 　 }　{: : : : : : : : : : : : : : :丶: : :i廴　__｝:}
　　｛. --､_,)j 　 ,　 ∨: : : : : :､ : : : : : : : : ＼j: `て)Ｘ(ﾍ,
　／／／　　　　/{　　} : : : : : : :＼: : }: : : : : : {: : : r‐ ､}ハ
｛／／　`'￢､　 　 ',　,　. : : : : : : : :);厶　-‐…’⌒¨＾ﾍ,ゝ､}ﾍ,
(／　　　　 　 '.　　 ∨ . : : : : : : :､_;{ 　 　 -－……:ｧく ＼＼:＼
　　　　　　　　 ;　 　 '、 : : / : : ／7´　　　　 　 ,ｘ;={ ､_｀　 　 Ｖハ
　　　　　　　　 i　　　 〈 : /: :／: : :|　　　　　　 {{{⌒}武　　　　i:＼}
　　　　　　　　 ｌ　　　　∨∠: : : : :にこにこにこ≫巛}]＼　　 |: : :)，
　　　　　　 　 亅　　　　ﾊ＼: :)Ｘ( |　　　　 　 　 　 i_,｝　{个;‐ |: : : i
　　　 　 　 　 /}　　 　 '　ｉ　 ＼:)Ｘ|　　　　 　 　 　 i_,｝　{_j/　 !: : 
　　　　 　 　 ..八　　 /　｜ . : : : : !`'ｰ:‐:→→: :‐:‐i_,｝‐:{_j　　j: : :｜
　　　　　 　 ;..l　 ＼/　 　|. : : :)Ｘ(:i: : :)Ｘ(／: : : ／从〉 : )|　　}(:
///////////////////////////////////////////////////////////////////////////

EOF
printf "${colorblue}"
cat <<"EOF"
  __  __ _____  _____         _  __           
 |  \/  |_   _|/ ____|  /\   | |/ /    /\     
 | \  / | | | | (___   /  \  | ' /    /  \    
 | |\/| | | |  \___ \ / /\ \ |  <    / /\ \   
 | |  | |_| |_ ____) / ____ \| . \  / ____ \  
 |_|  |_|_____|_____/_/    \_\_|\_\/_/    \_\       Ver 1.0 for Ubuntu
                              _____                _
                             / ____|              | |
                            | |     _ __ ___  __ _| |_ ___  _ __
                            | |    | '__/ _ \/ _` | __/ _ \| '__|
                            | |____| | |  __/ (_| | || (_) | |
                             \_____|_|  \___|\__,_|\__\___/|_|
EOF

printf "${colornormal}"

#クリーン状態かどうか警告文を出しておく
printf "${colorred}このスクリプトは、システムがクリーンな時の使用を推奨しています。${colornormal}\n"
echo -n "インストールを開始してもよろしいですか？ [Y/n]: "
read ANS

printf "${colorgreen}"
case $ANS in
"" | [Yy]*)
    # 「Yes」の時の処理
    #ApacheとPHP7.2をインストールする
    apt-get update && apt -y install apache2 && apt install -y php7.2 php7.2-mbstring php7.2-xml php7.2-gd php7.2-zip && apt install -y sqlite3 php7.2-sqlite3 php7.2-mysql

    #完了だったらPHPバージョンを出してみる
    php --version

    #GITインストールする
    apt install -y git

    #ROOTディレクトリに移動
    cd /

    #composerをインストールする
    apt install -y curl
    curl -sS https://getcomposer.org/installer -o composer-setup.php && php composer-setup.php --install-dir=/usr/local/bin --filename=composer && composer && rm composer-setup.php

    #gitでリポジトリ持ってるか聞いてみる
    printf "${colornormal}"
    echo -n "LaravelのGitリポジトリを入力してください。　無い場合は[N/n]: "
    read ANS
    printf "${colorgreen}"
    case $ANS in
    "" | [Nn]*)
        # 「NO」の時の処理
        echo "Laravel公式からリポジトリのクローンを開始します。"
        echo "※スーパーユーザーで実行していると言う旨のワーニングがコンポーザーから吐かれますが、無視して1～2分ほど待ってください。"
        #新規でLaravelをインストールします
        composer create-project laravel/laravel --prefer-dist app
        ;;
    *)
        # 「YES」の時の処理
        printf "GITクローンを行います。下記対象リポジトリ\n"
        printf $ANS
        git clone $ANS app
        ;;
    esac

    #所有ユーザーを変更
    chown www-data:www-data -R /app

    #apacheの設定を変更
    #VIRTUALHOSTファイルのバックアプ処理
    mv /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf.misaka.backup

    #VIRTUALHOST新規作成
    touch /etc/apache2/sites-available/000-default.conf

    cat <<"EOF" >/etc/apache2/sites-available/000-default.conf
# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        #ServerName www.example.com

        ServerAdmin webmaster@localhost
        DocumentRoot /app/public

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf

        #appの権限設定
        <Directory /app>
          Options Indexes FollowSymLinks
          AllowOverride None
          Require all granted
        </Directory>

</VirtualHost>
EOF
    #apache再起動
    service apache2 restart

    #GITインストールファイルまで行ってみる
    cd app

    #終了
    echo "インストールは終了しました。Laravelをお楽しみください。"
    ;;
*)
    # 「No」の時の処理
    echo "インストールを取り消しました。"
    ;;
esac

printf "${colornormal}"
