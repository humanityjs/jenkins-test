curl "https://api.github.com/repos/humanityjs/jenkins_test/statuses/$GIT_COMMIT" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"pending\", \"description\": \"Jenkins\", \"target_url\": \"http://brevis.serveo.net/job/jenkins-test/$BUILD_NUMBER/console\"}"
