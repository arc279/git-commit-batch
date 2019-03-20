# git commit をバッチ処理に組み込む

cf. https://hail2u.net/blog/software/git-diff---exit-code.html

## sample

```bash
$ make init
rm -rf repos
mkdir -p repos
cd repos && git init && git commit --allow-empty -m "init"
Initialized empty Git repository in /Users/uu147969/workspace/git-batch/repos/.git/
[master (root-commit) a8802a3] init

$ make update commit
date | tee repos/now
水  3 20 11:26:36 JST 2019
[master a40f53c] 2019-03-20T11:26:36.131461+0900
 1 file changed, 1 insertion(+)
 create mode 100644 now

$ make update commit
date | tee repos/now
水  3 20 11:26:40 JST 2019
[master ad0db91] 2019-03-20T11:26:40.147416+0900
 1 file changed, 1 insertion(+), 1 deletion(-)

$ make commit
no need to commit.

$ make update commit
date | tee repos/now
水  3 20 11:26:45 JST 2019
[master 521d58b] 2019-03-20T11:26:45.628725+0900
 1 file changed, 1 insertion(+), 1 deletion(-)
```
