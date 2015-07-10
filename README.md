# 準備
- ホストマシンで以下を実行
- sudo mkdir /opt/gitbucket

# 起動
- sudo docker run -i -t -d -p 8080:8080 -p 29418:29418 -v /opt/gitbucket:/gitbucket --name gitbucket 'gitbucket/ubuntu:14.04' java -jar /opt/gitbucket.war
