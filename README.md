Run the server:
```bash
$ make build
$ docker-compose up
```

Requisitions examples:
```bash
$ curl -X POST http://127.0.0.1:8181/v1/data/mapalabs \
    -H "Content-Type: application/json" \
    -d '{"input": {"user":{"name": "mateus"}, "org_target": "org_B"}}'

{"decision_id":"d53ed29b-eac3-4b6c-83bd-847ecc78a0fd","result":{"allow":false,"test_get_users_allowed_to_access_resource_on_their_org":true,"test_get_users_denied_to_access_resource_on_other_org":true}}
```