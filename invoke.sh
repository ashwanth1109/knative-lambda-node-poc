echo "Hitting test endpoint: GET /"
curl http://node-ric.ash-test-master.devflows-dev.k8.devfactory.com
echo ""
echo ""
echo "Hitting service endpoint: POST /"
curl -XPOST "http://node-ric.ash-test-master.devflows-dev.k8.devfactory.com" -H "Content-Type: application/json" -d '{"event":{"input":{"message": "Test message!"}},"context":{"val":"some context"}}'