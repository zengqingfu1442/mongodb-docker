docker exec -it mongo1 bash

mongo mongodb://mongo1,mongo2,mongo3/?replicaSet=rs0

config={'_id': 'rs0', 'members': [{'_id': 0, 'host': 'mongo1:27017'}, {'_id': 1, 'host': 'mongo2:27017'}, {'_id': 2, 'host': 'mongo3:27017'}]}

rs.initiate(config)
