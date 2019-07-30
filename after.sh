if [[ $BUILD_STATUS == "success" ]]
then
  export STATUS="success"
else
  export STATUS="failure"
fi

curl "https://api.github.com/repos/humanityjs/jenkins_test/statuses/$GIT_COMMIT" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"$STATUS\", \"description\": \"Jenkins\", \"target_url\": \"http://brevis.serveo.net/job/jenkins-test/$BUILD_NUMBER/console\"}"