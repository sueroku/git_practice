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