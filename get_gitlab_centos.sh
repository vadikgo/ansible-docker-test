#!/bin/sh
set -e
mkdir -p /rpm

curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | bash
sed -i 's/repo_gpgcheck=1/repo_gpgcheck=0/g' /etc/yum.repos.d/gitlab_gitlab-ce.repo
yum install --downloadonly --downloaddir=/tmp gitlab-ce -y

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.rpm.sh | bash
sed -i 's/repo_gpgcheck=1/repo_gpgcheck=0/g' /etc/yum.repos.d/runner_gitlab-ci-multi-runner.repo
yum install --downloadonly --downloaddir=/tmp gitlab-ci-multi-runner -y

mv /tmp/gitlab* /rpm
