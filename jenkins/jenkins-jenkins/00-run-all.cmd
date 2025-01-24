call 0-net-up.cmd
call 1-start-dind.cmd
call 2-build-jenkins-blueocean.cmd
call 3-start-jenkins-blueocean.cmd
call 4-password-show.cmd
pause

rem call 5-bash-console.cmd
rem call 5-logs-show.cmd
call 6-open-browser.cmd
call 7-stop-jenkins-blueocean.cmd
call 8-stop-dind.cmd
call 9-net-down.cmd
