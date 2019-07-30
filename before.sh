curl "https://api.github.com/repos/humanityjs/jenkins_test/statuses/4a7b428d58689468077ae9f30ab8342345086c51" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"pending\", \"description\": \"Jenkins\", \"target_url\": \"http://brevis.serveo.net/job/jenkins-test/7/console\"}"
