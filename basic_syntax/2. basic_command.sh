# 현재 working directory 와 staging area 만 상태 확인 (로컬레포제외)
git status 

# git add 
git add . # 모든 수정, 추가 사항 add

 # git add 특정파일 : 특정 파일 add (UI로 가능, 나중엔 프로그램이 복잡해져서 조심)
 git add 특정파일(위치포함)

# local repository에 반영 및 커밋 이력 생성
git commit -m "메세지타이틀" -m "메세지내용"

# vi 모드에서 작성, git commit 후 엔터
# 수연님.. 보고싶어요..... 

# add와 commit 동시에
git commit -am "메세지"





# commit 이력 확인 (local repository의 이력)
git log