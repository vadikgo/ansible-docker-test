#!/bin/sh
mkdir -p /rpm
curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | bash
yum install --downloadonly --downloaddir=/tmp gitlab-ce -y

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.rpm.sh | bash
yum install --downloadonly --downloaddir=/tmp gitlab-ci-multi-runner -y

mv /tmp/gitlab* /rpm
