
for /f "usebackq delims=" %%A in (`git rev-parse HEAD`) do set GIT_HASH=%%A
for /f "usebackq tokens=3 delims= " %%A in (`git status ^| findstr "On branch"`) do set GIT_BRANCH=%%A

echo GIT_HASH=%GIT_HASH%
echo GIT_BRANCH=%GIT_BRANCH%
