package mapalabs
import rego.v1

test_get_users_allowed_to_access_resource_on_their_org if {
	allow with input as {
		"method": "GET",
		"user": {
			"name": "manobrown"
		},
		"org_target": "org_B"
	}
}

test_get_users_denied_to_access_resource_on_other_org if {
	not allow with input as {"method": "GET",
		"user": {
			"name": "manobrown"
		},
		"org_target": "org_A"
	}
}
