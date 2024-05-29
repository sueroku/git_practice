# git add . 모든 변경사항 workspace->staging area로 이동
git add .

# git commit staging area의 변경사항을 확정짓고 commitID 생성 -> 로컬repo
git commit -m

# 원격 repo 에 upload
git push origin

# github 인증방법 2가지
# 1. token 인증방식 : github에서 직접 보안키(token) 발급
# 2. 제 3자인증(oauth)방식



# git 프로젝트 생성방법 2가지
# 방법1. 원격 repo 생성 후 clone

# 방법2. 로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드
# 해당 프로젝트 경로에 .git 폴더 생성
git init

# 원격지 주소 생성 및 추가
# 원격지 주소 추가
git remote add origin 레포주소 # git add . // git commint -m 'fix' // git branch // git push origin 브랜치로나온이름(master)
# 원격지 주소 삭제
git remote remove origin
# 원격지 주소 변경 // 다른 사람 레포 가져오기 ...?
git remote set-url origin 레포주소

# git 설정정보 조회
git config --list

# 실습 1. 강사님 레포 kimseonguk197 깃 주소에서 아무거나 repo(flutter_shop)로 가져가기
# 1) commit ID 를 다 유지한 채 가져가기 (탐작업 후 가져가기)
# git remote set-url origin 내레포주소 -> push (master만 남는다. 모든 branch까지는 나중에)
# 2) COMMIT ID 전부 없애고 내 레포인것처럼 가져가기 
# .git 폴더 삭제 -> git init -> git remote add origin 내레포 -> add commit push

# 타인레포 clone 방법 2가지
# 1) 커밋 이력 그대로 가져오기
git clone 타인레포주소 # 이후 해당 폴더로 이동 후 git 명령어
git remote set-url origin 내레포주소 # 이후 별도의 add commit 필요 없고 바로 push 가능
git push origin master(혹은 main)
# 2) 커밋 이력 없이 가져오기
git clone 타인레포주소 # 이후 해당 폴더로 이동 후 .git 폴더 삭제
git init
git remote add origin 내레포주소
git add .
git commit -m 'first' # 하는 이유 : 커밋 이력이 없기 때문
git push origin master

# 사용자 지정 방법
# 전역적 사용자(이름, email) 지정
git config --global user.name "이름"
git config --global user.email "이메일"

# 지역적 사용자(이름, email) 지정
# 현재 레파지토리에 한해서만 사용자 변경
git config --local user.name "이름"
git config --local user.email "이메일"

# 전체 config 내용 조회
# repository, 이름 , email 등...
git config --list
# 사용자 이름 조회
git config user.name
# 사용자 email 조회
git config user.email
git config remote.origin.url

# git ignore 파일 실습
# 확장자 .gitignore 파일 생성 후 git 추적 제외 대상 나열
# build 결과물들 : 개발한 소스코드가 실행가능한 상태로 바뀌는 작업, 코드 (.java->.class)
# 보안상 올리면 안되는 파일들 / 로그파일
