# black-malang-cow
흑두루미 레일즈 강의 레포지토리입니다..

##Docker desktop 설치하기
https://www.docker.com/products/docker-desktop
터미널에 docker 실행되는지 확인

## 환경설정
### rbenv 설치
```
brew install rbenv
```

### .bashrc나 .zshrc 에 아래를 추가한다.
```
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
```
### gem 설치
```
gem install bundler
gem install rails
# 프로젝트 폴더에서
bundle install
```

### mysql2 gem에 설치 실패한다면
아래를 실행후 bundle install
```
brew install openssl
bundle config --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include"
```

### brew service 이용해서 mysql 서버 설치 및 실행하기
```
brew install mysql
brew services list
#mysql 시작
brew services start mysql
#mysql 종료
brew services stop mysql
```

### create database
```
rails db:create
```

### 실행
```
rails s
```
