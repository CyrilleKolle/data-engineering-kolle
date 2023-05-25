#!/bin/bash

container_id=$(docker run -d exer1-image)

package_list=$(docker exec $container_id dpkg -l)

echo "$package_list"


docker stop $container_id

docker rm $container_id
