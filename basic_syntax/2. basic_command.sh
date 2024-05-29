# 현재 working directory 와 staging area 만 상태 확인 (로컬레포제외)
git status 

# git add 
git add . # 모든 수정, 추가 사항 add

 # git add 특정파일 : 특정 파일 add (UI로 가능, 나중엔 프로그램이 복잡해져서 조심)
 git add 특정파일(위치포함)

# local repository에 반영 및 커밋 이력 생성
git commit -m "메세지타이틀" -m "메세지내용"

# vi 모드에서 작성, git commit 후 엔터 첫줄 타이틀 다음줄 내용
# 수연님.. 보고싶어요..... 

# add와 commit 동시에
git commit -am "메세지"

# commit 이력 확인 (local repository의 이력)
git log
# git log 간결하게 
git log --oneline
# 전체 이력 조회
git log --all
# 로그를 그래프 형태로 조회 
git log --graph # 원라인과 같이 쓸 수 있음

# 원격저장소로 업로드
git push origin 브랜치명

# 충돌 무시하고 강제 push
git push origin master --force

# 특정 commit ID로 전환 : 중요 커밋아이디의 메세지(수정사항) 잘 써라 그래야 돌아갈 수 있다.
git checkout 커밋아이디 # 분기 처리 하지말구.. 그냥 수정사항만 확인하고 오는게 나을거에요. 상황따라 다르다.

# 다시 현재의 master(브렌치)의 commit으로 return 
git checkout master

# git pull 은 원격의 변경사항을 local로 다운로드
git pull origin 브랜치명

# git 작업 취소
# working directory 에서 취소 (UI에서 가능)
git checkout .
# staging area 에서 취소 (UI에서 가능)
git reset
# commit 이후의 취소 (중요)
git reset HEAD~1
git reset HEAD^
# push 이후의 취소 (중요)
git revert 커밋ID