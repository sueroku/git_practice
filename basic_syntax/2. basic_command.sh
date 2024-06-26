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
# working directory 에서 수정사항만 취소 (UI에서 가능)
git checkout .
# working directory 에서 추가파일 취소
git clean --fdx
# working directory 에서 수정/추가 파일 동시에 취소
git checkout . | git clean --fdx
# staging area 에서 취소 (UI에서 가능)
git reset
# commit 이후의 취소 (중요) 커밋 기록을 지우자
git reset HEAD~1 # 둘 중 하나
git reset HEAD^ # 쓴다.
# push 이후의 취소 (중요)
git revert 커밋ID

# 버전별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경(+/-)이 있는 지를 비교
git diff A B
git diff commitID1 commitID2
git diff A브랜치 B브렌치 

# git fetch
# 원격에 변경사항을 로컬에 가져오되 병합은 하지 않는 것
# 비교 : git pull origin master 와 git fetch origin master 비교
git fetch --all # 모든 브랜치 정보 fetch
git fetch --all --prune # 브랜치 삭제등의 모든 정보까지 fetch

git stash # 작업중인 사항을 임시 저장
git stash apply stash@인덱스 # 저장한 목록은 놔둔 채 작업 목록 적용
git stash pop # 저장한 최신의 작업목록 꺼내기
git stash list # 저장한 작업 사항 목록 조회
git stash show -p 인덱스 # 저장한 작업 목록 상세 조회
git stash clear # 저장한 stash 목록 전체 삭제

# 버전명시 taggin
git tag v1.0
git tag v1.0 -m "1. 주요사항 2. 주요사항 (변경사항등등)" # 명시하는 게 좋다.

# tag release 배포 
# commit push 와 상관없이 tag(release) 별도 push
git push origin v1.0

# 태그 목록 조회
git tag

# 브랜치 생성
# 현재 checkout하고 있는 브랜치를 기준으로 브랜치 생성
git branch 브랜치명

# 해당 브랜치로 전환
git checkout 브랜치명

# 브랜치 목록 조회
git branch

# 브랜치 삭제 (자기자신으로 checkout되어 있으면 안된다)
git branch -D 브랜치명

# 브랜치 생성과 전환 동시에
git checkout -b 브랜치명
